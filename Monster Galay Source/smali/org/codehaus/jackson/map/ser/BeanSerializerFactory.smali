.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final _factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance p1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    .end local p1    # "config":Lorg/codehaus/jackson/map/SerializerFactory$Config;
    invoke-direct {p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 193
    .restart local p1    # "config":Lorg/codehaus/jackson/map/SerializerFactory$Config;
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .line 194
    return-void
.end method


# virtual methods
.method protected _constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 13
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "typeContext"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .param p3, "pb"    # Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    .param p4, "staticTyping"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 767
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual/range {p6 .. p6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 770
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 771
    .local v4, "type":Lorg/codehaus/jackson/type/JavaType;
    new-instance v12, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v4, v2, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 774
    .local v12, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v0, p6

    invoke-virtual {p0, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 776
    .local v5, "annotatedSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 777
    .local v7, "contentTypeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->isCollectionMapOrArray(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 782
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v6

    .local v6, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v8, p6

    move/from16 v9, p4

    .line 783
    invoke-virtual/range {v2 .. v9}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->buildWriter(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v11

    .line 786
    .local v11, "pbw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v10

    .line 787
    .local v10, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->setViews([Ljava/lang/Class;)V

    .line 788
    return-object v11
.end method

.method protected _sortBeanProperties(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .param p3, "propertyOrder"    # [Ljava/lang/String;
    .param p4, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    .local p2, "creatorProps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 801
    .local v6, "size":I
    if-eqz p4, :cond_0

    .line 802
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 807
    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 808
    .local v7, "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 804
    .end local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    mul-int/lit8 v8, v6, 0x2

    invoke-direct {v0, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .restart local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    goto :goto_0

    .line 810
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    mul-int/lit8 v8, v6, 0x2

    invoke-direct {v5, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 812
    .local v5, "ordered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    if-eqz p3, :cond_3

    .line 813
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 814
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 815
    .restart local v7    # "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v7, :cond_2

    .line 816
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 821
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 822
    .restart local v4    # "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 823
    .restart local v7    # "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v7, :cond_4

    .line 824
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 828
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "w":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 829
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method protected constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 18
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
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
    .line 429
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Object;

    if-ne v4, v8, :cond_0

    .line 430
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can not create bean serializer for Object.class"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    .line 436
    .local v12, "builder":Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;

    move-result-object v16

    .line 437
    .local v16, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnyGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v11

    .line 440
    .local v11, "anyGetter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    if-nez v16, :cond_1

    .line 442
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .restart local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 445
    .local v15, "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->changeProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    .line 451
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_2
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 452
    :cond_3
    if-nez v11, :cond_5

    .line 457
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->hasKnownClassAnnotations()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 458
    invoke-virtual {v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->createDummy()Lorg/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v4

    .line 498
    :goto_1
    return-object v4

    .line 460
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 462
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 470
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 472
    .restart local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->orderProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_3

    .line 465
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_2

    .line 475
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 476
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 478
    if-eqz v11, :cond_8

    .line 479
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 481
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    sget-object v4, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v6

    .line 482
    .local v6, "staticTyping":Z
    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v17

    .line 483
    .local v17, "valueType":Lorg/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 485
    .local v7, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lorg/codehaus/jackson/map/ser/MapSerializer;->construct([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/MapSerializer;

    move-result-object v14

    .line 487
    .local v14, "mapSer":Lorg/codehaus/jackson/map/ser/MapSerializer;
    new-instance v4, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-direct {v4, v11, v14}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/ser/MapSerializer;)V

    invoke-virtual {v12, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setAnyGetter(Lorg/codehaus/jackson/map/ser/AnyGetterWriter;)V

    .line 490
    .end local v5    # "type":Lorg/codehaus/jackson/type/JavaType;
    .end local v6    # "staticTyping":Z
    .end local v7    # "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    .end local v14    # "mapSer":Lorg/codehaus/jackson/map/ser/MapSerializer;
    .end local v17    # "valueType":Lorg/codehaus/jackson/type/JavaType;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 494
    .restart local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    goto :goto_4

    .line 498
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_9
    invoke-virtual {v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->build()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    goto/16 :goto_1
.end method

.method protected constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 518
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .param p1, "writer"    # Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "inViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;->constructViewBased(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 514
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method public createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasKeySerializers()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    const/4 v2, 0x0

    .line 326
    :cond_0
    :goto_0
    return-object v2

    .line 316
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 317
    .local v0, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    const/4 v2, 0x0

    .line 320
    .local v2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->keySerializers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/Serializers;

    .line 321
    .local v3, "serializers":Lorg/codehaus/jackson/map/Serializers;
    invoke-interface {v3, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 18
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "origType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
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
    .line 254
    invoke-virtual/range {p1 .. p2}, Lorg/codehaus/jackson/map/SerializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 255
    .local v6, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 256
    .local v16, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v16, :cond_0

    move-object/from16 v3, v16

    .line 302
    :goto_0
    return-object v3

    .line 261
    :cond_0
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 263
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p2

    if-eq v5, v0, :cond_1

    const/4 v8, 0x1

    .line 266
    .local v8, "staticTyping":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 267
    invoke-virtual/range {v3 .. v8}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->buildContainerSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_0

    .line 263
    .end local v8    # "staticTyping":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 271
    .restart local v8    # "staticTyping":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/map/Serializers;

    .line 272
    .local v17, "serializers":Lorg/codehaus/jackson/map/Serializers;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v5, v6, v2}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 273
    if-eqz v16, :cond_3

    move-object/from16 v3, v16

    .line 274
    goto :goto_0

    .end local v17    # "serializers":Lorg/codehaus/jackson/map/Serializers;
    :cond_4
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 282
    invoke-virtual/range {v9 .. v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByLookup(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 283
    if-eqz v16, :cond_5

    move-object/from16 v3, v16

    .line 284
    goto :goto_0

    :cond_5
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 286
    invoke-virtual/range {v9 .. v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 287
    if-eqz v16, :cond_6

    move-object/from16 v3, v16

    .line 288
    goto :goto_0

    .line 295
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v6, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 299
    if-nez v16, :cond_7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 300
    invoke-super/range {v3 .. v8}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerByAddonType(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    :cond_7
    move-object/from16 v3, v16

    .line 302
    goto/16 :goto_0
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 627
    .local v3, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 628
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "ignored":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 630
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 631
    .local v2, "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 632
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 633
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 638
    .end local v2    # "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;
    .locals 19
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v18

    .line 560
    .local v18, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v18

    .line 564
    :cond_0
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v18

    .line 567
    :cond_1
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v18

    .line 571
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v14

    .line 572
    .local v14, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v14, v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v18

    .line 574
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findGetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v15

    .line 575
    .local v15, "methodsByProp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 578
    .local v12, "fieldsByProp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/Map;)V

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/Map;)V

    .line 582
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 583
    const/16 v17, 0x0

    .line 610
    :cond_3
    return-object v17

    .line 587
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->usesStaticTyping(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v7

    .line 588
    .local v7, "staticTyping":Z
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    move-result-object v6

    .line 590
    .local v6, "pb":Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    .local v17, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v5

    .line 593
    .local v5, "typeBind":Lorg/codehaus/jackson/map/type/TypeBindings;
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 595
    .local v10, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v14, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v16

    .line 596
    .local v16, "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v3

    if-nez v3, :cond_5

    .line 599
    :cond_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    .end local v10    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    .end local v16    # "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    :cond_7
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 604
    .local v11, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v14, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v16

    .line 605
    .restart local v16    # "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v3

    if-nez v3, :cond_8

    .line 608
    :cond_9
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
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
    .line 346
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    const/4 v2, 0x0

    .line 356
    :cond_0
    return-object v2

    .line 349
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 351
    .local v2, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 353
    .local v1, "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    invoke-virtual {v1, p1, p3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->modifySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    goto :goto_0
.end method

.method protected findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;
    .locals 2
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 529
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 5
    .param p1, "containerType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 402
    .local v2, "contentType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 403
    .local v0, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 405
    .local v1, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 406
    invoke-virtual {p0, p2, v2, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    .line 409
    :goto_0
    return-object v4

    .line 408
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p3, p2, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v3

    .line 409
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, v2, v3, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 4
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 376
    .local v0, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 378
    .local v1, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p0, p2, p1, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    .line 382
    :goto_0
    return-object v3

    .line 381
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v2

    .line 382
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, p1, v2, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    goto :goto_0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    return-object v0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 9
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "builder"    # Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    .prologue
    .line 693
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v5

    .line 694
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    sget-object v8, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v8}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    .line 695
    .local v3, "includeByDefault":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 696
    .local v4, "propCount":I
    const/4 v7, 0x0

    .line 697
    .local v7, "viewsFound":I
    new-array v1, v4, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 699
    .local v1, "filtered":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 700
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 701
    .local v0, "bpw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    .line 702
    .local v6, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 703
    if-eqz v3, :cond_0

    .line 704
    aput-object v0, v1, v2

    .line 699
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 708
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v8

    aput-object v8, v1, v2

    goto :goto_1

    .line 712
    .end local v0    # "bpw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v6    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_3

    if-nez v7, :cond_3

    .line 716
    :goto_2
    return-void

    .line 715
    :cond_3
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilteredProperties([Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    goto :goto_2
.end method

.method protected removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/Map;)V
    .locals 9
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p3, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 751
    :cond_0
    return-void

    .line 729
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 730
    .local v4, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 731
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;TT;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 732
    .local v3, "ignores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 733
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 734
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 735
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 736
    .local v6, "result":Ljava/lang/Boolean;
    if-nez v6, :cond_4

    .line 737
    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 738
    .local v1, "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 739
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v6

    .line 741
    if-nez v6, :cond_3

    .line 742
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 744
    :cond_3
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v1    # "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 748
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findCreatorPropertyNames()Ljava/util/List;

    move-result-object v2

    .line 661
    .local v2, "creatorProps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 662
    .local v3, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 663
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "propOrder":[Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 667
    .local v1, "alpha":Ljava/lang/Boolean;
    if-nez v1, :cond_2

    .line 668
    sget-object v6, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v5

    .line 672
    .local v5, "sort":Z
    :goto_0
    if-nez v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    invoke-virtual {p0, p3, v2, v4, v5}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_sortBeanProperties(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p3

    .line 675
    :cond_1
    return-object p3

    .line 670
    .end local v5    # "sort":Z
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .restart local v5    # "sort":Z
    goto :goto_0
.end method

.method public withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 223
    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    :goto_0
    return-object p0

    .line 218
    .restart local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    if-eq v0, v1, :cond_1

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    new-instance p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    goto :goto_0
.end method
