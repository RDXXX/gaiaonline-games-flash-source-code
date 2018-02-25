.class public Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
.super Lorg/codehaus/jackson/map/BeanDescription;
.source "BasicBeanDescription.java"


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected _bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

.field protected final _classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lorg/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/BeanDescription;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 57
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    .line 58
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 59
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 60
    return-void
.end method

.method public static descFor(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 4
    .param p0, "elem"    # Ljava/lang/reflect/AnnotatedElement;

    .prologue
    .line 935
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "elem":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .restart local p0    # "elem":Ljava/lang/reflect/AnnotatedElement;
    :goto_0
    return-object v2

    .line 938
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 939
    check-cast v1, Ljava/lang/reflect/Method;

    .line 940
    .local v1, "m":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (from class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 942
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 943
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 945
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructor() (from class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 948
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static manglePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basename"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 910
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 911
    const/4 p0, 0x0

    .line 926
    .end local p0    # "basename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 914
    .restart local p0    # "basename":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 915
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 916
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 917
    .local v4, "upper":C
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 918
    .local v2, "lower":C
    if-ne v4, v2, :cond_3

    .line 926
    .end local v2    # "lower":C
    .end local v4    # "upper":C
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 921
    .restart local v2    # "lower":C
    .restart local v4    # "upper":C
    :cond_3
    if-nez v3, :cond_4

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 924
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public _findPropertyFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 11
    .param p3, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 826
    .local v7, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v2

    .line 827
    .local v2, "naming":Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 838
    .local v0, "af":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    if-eqz p3, :cond_3

    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, "propName":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_4

    .line 843
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 844
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 846
    if-eqz v2, :cond_1

    .line 847
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 861
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 862
    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 871
    :cond_2
    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 872
    .local v4, "old":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    if-eqz v4, :cond_0

    .line 882
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 883
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 884
    .local v5, "oldDesc":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "newDesc":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple fields representing property \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 838
    .end local v3    # "newDesc":Ljava/lang/String;
    .end local v4    # "old":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v5    # "oldDesc":Ljava/lang/String;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 851
    .restart local v6    # "propName":Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isFieldVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 856
    if-eqz v2, :cond_1

    .line 857
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 889
    .end local v0    # "af":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_5
    return-object v7
.end method

.method public bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    return-object v0
.end method

.method public findAnyGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "found":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 566
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    if-eqz v1, :cond_1

    .line 570
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple methods with \'any-getter\' annotation ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 575
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 576
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 577
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(): return type is not instance of java.util.Map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    :cond_2
    move-object v1, v0

    .line 580
    goto :goto_0

    .line 581
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v1
.end method

.method public findAnySetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "found":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 527
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    if-eqz v1, :cond_1

    .line 531
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple methods with \'any-setter\' annotation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 533
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    .line 534
    .local v3, "pcount":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 535
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(): takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameters, should take 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 545
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v4

    .line 546
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/String;

    if-eq v4, v5, :cond_3

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    .line 547
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(): first argument not of type String or Object, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 549
    :cond_3
    move-object v1, v0

    .line 550
    goto/16 :goto_0

    .line 551
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v3    # "pcount":I
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-object v1
.end method

.method public findBackReferenceProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    const/4 v4, 0x0

    .line 593
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 594
    .local v1, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 595
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    .line 596
    .local v3, "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    if-nez v4, :cond_1

    .line 598
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 600
    .restart local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    :cond_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 601
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple back-reference properties with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 607
    .end local v1    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v3    # "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 608
    .local v0, "af":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    .line 609
    .restart local v3    # "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 610
    if-nez v4, :cond_4

    .line 611
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 613
    .restart local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    :cond_4
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 614
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple back-reference properties with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 618
    .end local v0    # "af":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v3    # "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    :cond_5
    return-object v4
.end method

.method public findCreatorPropertyNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    const/4 v6, 0x0

    .line 384
    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 385
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v4

    .line 387
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<+Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 388
    .local v1, "creator":Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    .line 389
    .local v0, "argCount":I
    const/4 v8, 0x1

    if-lt v0, v8, :cond_0

    .line 390
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 392
    if-nez v6, :cond_1

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .restart local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    const/4 v7, 0x1

    .local v7, "p":I
    :goto_2
    if-ge v7, v0, :cond_0

    .line 397
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 385
    .end local v0    # "argCount":I
    .end local v1    # "creator":Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "p":I
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 384
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :cond_4
    if-nez v6, :cond_5

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 404
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-object v6
.end method

.method public findDefaultConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 268
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 271
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public varargs findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "expArgTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 333
    .local v1, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 335
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 336
    .local v0, "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 338
    .local v3, "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v7

    .line 344
    .end local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return-object v7

    .line 336
    .restart local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public findGetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "visibilityChecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .local v7, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v2

    .line 152
    .local v2, "naming":Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 157
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 164
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "propName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 169
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 170
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForAnyGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    if-nez v6, :cond_1

    .line 172
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_1
    if-eqz v2, :cond_2

    .line 176
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 205
    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    :cond_3
    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 214
    .local v4, "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "oldDesc":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "newDesc":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Conflicting getter definitions for property \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    .end local v3    # "newDesc":Ljava/lang/String;
    .end local v4    # "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v5    # "oldDesc":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    .line 182
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 183
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 186
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    :goto_1
    if-eqz v6, :cond_0

    .line 196
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 199
    if-eqz v2, :cond_2

    .line 200
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 188
    :cond_5
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isIsGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 220
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_6
    return-object v7
.end method

.method public findJsonValueMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "found":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 234
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    if-eqz v1, :cond_1

    .line 238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple methods with active \'as-value\' annotation ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() marked with an \'as-value\' annotation, but does not have valid getter signature (non-static, takes no args, returns a value)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 250
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_3
    return-object v1
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method public findSerializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2
    .param p1, "defValue"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 433
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    return-object v0
.end method

.method public findSetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 446
    .local v7, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v2

    .line 447
    .local v2, "naming":Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 451
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 460
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, "propName":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 466
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v6

    .line 468
    if-nez v6, :cond_1

    .line 469
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    .line 472
    :cond_1
    if-eqz v2, :cond_2

    .line 473
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForSetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 493
    :cond_2
    :goto_1
    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 494
    .local v4, "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 500
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "oldDesc":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "newDesc":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Conflicting setter definitions for property \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 477
    .end local v3    # "newDesc":Ljava/lang/String;
    .end local v4    # "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v5    # "oldDesc":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isSetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v6

    .line 481
    if-eqz v6, :cond_0

    .line 485
    if-eqz v2, :cond_2

    .line 486
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, v8, v0, v6}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForSetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 505
    .restart local v4    # "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    invoke-virtual {v7, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 509
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v4    # "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_5
    return-object v7
.end method

.method public varargs findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 308
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 309
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 310
    .local v1, "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 311
    .local v3, "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_1

    .line 312
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 317
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return-object v7

    .line 310
    .restart local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .restart local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMethods()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v1

    .line 283
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    return-object v1

    .line 286
    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 288
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_2
    move-object v1, v3

    .line 292
    goto :goto_0
.end method

.method public hasKnownClassAnnotations()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->hasAnnotations()Z

    move-result v0

    return v0
.end method

.method public instantiateBean(Z)Ljava/lang/Object;
    .locals 6
    .param p1, "fixAccess"    # Z

    .prologue
    .line 114
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 115
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    if-nez v0, :cond_0

    .line 116
    const/4 v3, 0x0

    .line 122
    :goto_0
    return-object v3

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->fixAccess()V

    .line 122
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 125
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 128
    :cond_2
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Error;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 129
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 130
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate bean of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected isCglibGetCallbacks(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 6
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v4, 0x0

    .line 711
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 713
    .local v3, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v4

    .line 720
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 722
    .local v0, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 723
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "pname":Ljava/lang/String;
    const-string v5, "net.sf.cglib"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "org.hibernate.repackage.cglib"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 354
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    const-string v3, "valueOf"

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 366
    goto :goto_0
.end method

.method protected isGroovyMetaClassGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 754
    .local v1, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v2

    .line 757
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 758
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "groovy.lang"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isGroovyMetaClassSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x0

    .line 740
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 741
    .local v0, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 742
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "groovy.lang"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    const/4 v2, 0x1

    .line 745
    :cond_0
    return v2
.end method

.method protected mangleGetterName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-static {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected mangleSetterName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-static {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public okNameForAnyGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    return-object v0
.end method

.method public okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 650
    const-string v1, "get"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "getCallbacks"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isCglibGetCallbacks(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    :cond_0
    :goto_0
    return-object v0

    .line 662
    :cond_1
    const-string v1, "getMetaClass"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isGroovyMetaClassGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->mangleGetterName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 677
    const-string v2, "is"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 680
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 686
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 683
    .restart local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->mangleGetterName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v1, 0x0

    .line 772
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "name":Ljava/lang/String;
    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->mangleSetterName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    if-nez v0, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-object v1

    .line 783
    :cond_1
    const-string v2, "metaClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isGroovyMetaClassSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v1, v0

    .line 789
    goto :goto_0
.end method
