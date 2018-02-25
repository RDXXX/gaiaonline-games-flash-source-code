.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final NO_ANNOTATION_MAPS:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

.field protected _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected _fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

.field protected final _mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

.field protected final _primaryMixIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _superTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    sput-object v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V
    .locals 2
    .param p3, "aintr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "mir"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 124
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;

    .line 125
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 126
    iput-object p4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 129
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private _emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 834
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method private _emptyAnnotationMaps(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 838
    if-nez p1, :cond_1

    .line 839
    sget-object v1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 845
    :cond_0
    return-object v1

    .line 841
    :cond_1
    new-array v1, p1, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 842
    .local v1, "maps":[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 843
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v1

    .line 878
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 879
    .local v0, "mods":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 3
    .param p1, "aintr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p2, "mir"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "st":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V

    .line 141
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 142
    return-object v0
.end method

.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 2
    .param p1, "aintr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p2, "mir"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V

    .line 155
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 156
    return-object v0
.end method


# virtual methods
.method protected _addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V
    .locals 1
    .param p1, "annotations"    # Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected _addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .param p1, "annotations"    # Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1

    .line 359
    :cond_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 341
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 342
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_3
    invoke-static {p3, p2}, Lorg/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":I
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 353
    .local v5, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 354
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 355
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 353
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected _addConstructorMixIns(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, "ctorKeys":[Lorg/codehaus/jackson/map/introspect/MemberKey;
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v8, :cond_0

    move v2, v9

    .line 465
    .local v2, "ctorCount":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v0, v5

    .line 466
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    packed-switch v8, :pswitch_data_0

    .line 473
    if-nez v3, :cond_2

    .line 474
    new-array v3, v2, [Lorg/codehaus/jackson/map/introspect/MemberKey;

    .line 475
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 476
    new-instance v10, Lorg/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-direct {v10, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v3, v4

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 464
    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ctorCount":I
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 468
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "ctorCount":I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :pswitch_0
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v8, :cond_1

    .line 469
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p0, v1, v8, v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    .line 465
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 479
    :cond_2
    new-instance v6, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v6, v1}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 481
    .local v6, "key":Lorg/codehaus/jackson/map/introspect/MemberKey;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v2, :cond_1

    .line 482
    aget-object v8, v3, v4

    invoke-virtual {v6, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 485
    :cond_3
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const/4 v10, 0x1

    invoke-virtual {p0, v1, v8, v10}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    goto :goto_3

    .line 490
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "i":I
    .end local v6    # "key":Lorg/codehaus/jackson/map/introspect/MemberKey;
    :cond_4
    return-void

    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected _addFactoryMixIns(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 495
    .local v7, "methodKeys":[Lorg/codehaus/jackson/map/introspect/MemberKey;
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 497
    .local v6, "methodCount":I
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 498
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 497
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 504
    if-nez v7, :cond_2

    .line 505
    new-array v7, v6, [Lorg/codehaus/jackson/map/introspect/MemberKey;

    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_2

    .line 507
    new-instance v9, Lorg/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v9, v7, v1

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 510
    .end local v1    # "i":I
    :cond_2
    new-instance v3, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v3, v5}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 511
    .local v3, "key":Lorg/codehaus/jackson/map/introspect/MemberKey;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_0

    .line 512
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 515
    :cond_3
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 519
    .end local v1    # "i":I
    .end local v3    # "key":Lorg/codehaus/jackson/map/introspect/MemberKey;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_4
    return-void
.end method

.method protected _addFieldMixIns(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v1, v4

    .line 750
    .local v8, "mixinField":Ljava/lang/reflect/Field;
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 746
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, "name":Ljava/lang/String;
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 756
    .local v7, "maskedField":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    if-eqz v7, :cond_0

    .line 757
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v0, v2, v3

    .line 758
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v10, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 759
    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 757
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 764
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "maskedField":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v8    # "mixinField":Ljava/lang/reflect/Field;
    .end local v9    # "name":Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_3
    return-void
.end method

.method protected _addFields(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 711
    .local v5, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_2

    .line 716
    invoke-virtual {p0, p1, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 717
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 719
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 717
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 730
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v6, :cond_2

    .line 731
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v6, p2}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 732
    .local v4, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 733
    invoke-virtual {p0, v4, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/util/Map;)V

    .line 737
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method protected _addMemberMethods(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 8
    .param p2, "methodFilter"    # Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .param p3, "methods"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .param p5, "mixIns"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/MethodFilter;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_0

    .line 598
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 601
    :cond_0
    if-nez p1, :cond_2

    .line 636
    :cond_1
    return-void

    .line 605
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 606
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v3, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 605
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_4
    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 610
    .local v5, "old":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-nez v5, :cond_5

    .line 611
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 612
    .local v4, "newM":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p3, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 614
    invoke-virtual {p5, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 615
    if-eqz v5, :cond_3

    .line 616
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 622
    .end local v4    # "newM":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_5
    invoke-virtual {p0, v3, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 631
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_3

    .line 632
    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p3, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1
.end method

.method protected _addMethodMixIns(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 6
    .param p1, "methodFilter"    # Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .param p2, "methods"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .param p4, "mixIns"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/MethodFilter;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    .local p3, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 642
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v4, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 641
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 650
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {p0, v4, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 660
    .end local v0    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_2
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V
    .locals 8
    .param p2, "target"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p3, "addParamAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p1, "mixin":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 899
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 900
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 898
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 903
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    if-eqz p3, :cond_3

    .line 904
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 905
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 906
    aget-object v1, v6, v2

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 907
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 906
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 905
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 911
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_3
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V
    .locals 8
    .param p1, "mixin"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "addParamAnnotations"    # Z

    .prologue
    .line 920
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 921
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 922
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 920
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    if-eqz p3, :cond_3

    .line 926
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 927
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 928
    aget-object v1, v6, v2

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 929
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 928
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 927
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_3
    return-void
.end method

.method protected _addMixUnders(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 942
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 943
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 941
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    return-void
.end method

.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 6
    .param p1, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 822
    new-instance v1, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 823
    .local v1, "annMap":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    if-eqz p1, :cond_1

    .line 824
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 825
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 826
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 824
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 830
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-object v1
.end method

.method protected _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 4
    .param p1, "anns"    # [[Ljava/lang/annotation/Annotation;

    .prologue
    .line 812
    array-length v1, p1

    .line 813
    .local v1, "len":I
    new-array v2, v1, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 814
    .local v2, "result":[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 815
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-object v2
.end method

.method protected _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3
    .param p2, "defaultCtor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 789
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    goto :goto_1
.end method

.method protected _constructCreatorMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 795
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 798
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructField(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 804
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 807
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x0

    .line 778
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 781
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _isIncludableMethod(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "filter"    # Lorg/codehaus/jackson/map/introspect/MethodFilter;

    .prologue
    const/4 v0, 0x0

    .line 856
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/codehaus/jackson/map/introspect/MethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 866
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fields()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v1, :cond_0

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    goto :goto_0
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
    .line 245
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

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
    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    goto :goto_0
.end method

.method public getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getMemberMethodCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->size()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticMethods()Ljava/util/List;
    .locals 1
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
    .line 218
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    goto :goto_0
.end method

.method public hasAnnotations()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoredFields()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredFields:Ljava/util/List;

    if-nez v1, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredFields:Ljava/util/List;

    goto :goto_0
.end method

.method public ignoredMemberMethods()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredMethods:Ljava/util/List;

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredMethods:Ljava/util/List;

    goto :goto_0
.end method

.method public memberMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method protected resolveClassAnnotations()V
    .locals 9

    .prologue
    .line 288
    new-instance v6, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v6}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 290
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 291
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v6, v7, v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 294
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 295
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 294
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 303
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {p0, v6, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 304
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 305
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 306
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 304
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i$":I
    :cond_5
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    const-class v7, Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 320
    return-void
.end method

.method public resolveCreators(Z)V
    .locals 11
    .param p1, "includeAll"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 380
    iput-object v9, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 381
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v1, v4

    .line 382
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    packed-switch v7, :pswitch_data_0

    .line 387
    if-eqz p1, :cond_1

    .line 388
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v7, :cond_0

    .line 389
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 391
    :cond_0
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :pswitch_0
    invoke-virtual {p0, v2, v10}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    goto :goto_1

    .line 396
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v7, :cond_4

    .line 397
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v7, :cond_4

    .line 398
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V

    .line 407
    :cond_4
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v7, :cond_7

    .line 408
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v7, :cond_5

    .line 409
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v7, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 410
    iput-object v9, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 413
    :cond_5
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v7, :cond_7

    .line 415
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "i":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 416
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v8, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 417
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 423
    .end local v3    # "i":I
    :cond_7
    iput-object v9, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 425
    if-eqz p1, :cond_e

    .line 429
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_b

    aget-object v6, v1, v4

    .line 430
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 429
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 433
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v0, v7

    .line 435
    .local v0, "argCount":I
    if-lt v0, v10, :cond_8

    .line 438
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v7, :cond_a

    .line 439
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 441
    :cond_a
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 444
    .end local v0    # "argCount":I
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_b
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz v7, :cond_c

    .line 445
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V

    .line 448
    :cond_c
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v7, :cond_e

    .line 449
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz v7, :cond_e

    .line 451
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "i":I
    :cond_d
    :goto_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_e

    .line 452
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v8, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 453
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 459
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i":I
    :cond_e
    return-void

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public resolveFields(Z)V
    .locals 5
    .param p1, "collectIgnored"    # Z

    .prologue
    .line 677
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 678
    .local v1, "foundFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 683
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v3, :cond_1

    .line 684
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 685
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 687
    .local v0, "f":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredFields:Ljava/util/List;

    invoke-static {v3, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredFields:Ljava/util/List;

    goto :goto_0

    .line 695
    .end local v0    # "f":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 701
    :goto_1
    return-void

    .line 698
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 699
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;Z)V
    .locals 11
    .param p1, "methodFilter"    # Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .param p2, "collectIgnored"    # Z

    .prologue
    .line 535
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    .line 536
    new-instance v5, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    .line 538
    .local v5, "mixins":Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 541
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 542
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 543
    .local v4, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    goto :goto_0

    .line 542
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 546
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, v2}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 548
    .restart local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 549
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, p1, v0, v4, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 559
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_6

    .line 560
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 562
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 565
    .local v10, "mixIn":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :try_start_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClasses()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 566
    .local v9, "m":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_3

    .line 567
    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    .line 568
    .local v6, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v10}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v6, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    .line 569
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    .end local v6    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 579
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    .end local v10    # "mixIn":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 580
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 582
    .restart local v6    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 584
    if-eqz p2, :cond_5

    .line 585
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredMethods:Ljava/util/List;

    invoke-static {v0, v6}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_ignoredMethods:Ljava/util/List;

    goto :goto_3

    .line 590
    .end local v6    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

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
