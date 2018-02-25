.class public Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "JaxbAnnotationIntrospector.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;,
        Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;,
        Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;
    }
.end annotation


# static fields
.field protected static final MARKER_FOR_DEFAULT:Ljava/lang/String; = "##default"

.field private static final _propertyDescriptors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _jaxbPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 961
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_propertyDescriptors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    .line 88
    const-class v3, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_jaxbPackageName:Ljava/lang/String;

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "dataHandlerSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    const/4 v1, 0x0

    .line 93
    .local v1, "dataHandlerDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :try_start_0
    const-string v3, "org.codehaus.jackson.xc.DataHandlerJsonSerializer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v2, v0

    .line 94
    const-string v3, "org.codehaus.jackson.xc.DataHandlerJsonDeserializer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iput-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 99
    iput-object v1, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 3
    .param p1, "adapterInfo"    # Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1127
    .local p2, "typeNeeded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->type()Ljava/lang/Class;

    move-result-object v0

    .line 1128
    .local v0, "adaptedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter$DEFAULT;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1130
    :cond_0
    invoke-interface {p1}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 1131
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 1133
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ae"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, "aeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljavax/xml/bind/annotation/XmlElementWrapper;

    invoke-interface {p0, v7}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/annotation/XmlElementWrapper;

    .line 1011
    .local v3, "elementWrapper":Ljavax/xml/bind/annotation/XmlElementWrapper;
    if-eqz v3, :cond_2

    .line 1012
    invoke-interface {v3}, Ljavax/xml/bind/annotation/XmlElementWrapper;->name()Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1058
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 1016
    goto :goto_0

    .line 1019
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    const-class v7, Ljavax/xml/bind/annotation/XmlAttribute;

    invoke-interface {p0, v7}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlAttribute;

    .line 1020
    .local v0, "attribute":Ljavax/xml/bind/annotation/XmlAttribute;
    if-eqz v0, :cond_3

    .line 1021
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlAttribute;->name()Ljava/lang/String;

    move-result-object v4

    .line 1022
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, p2

    .line 1025
    goto :goto_0

    .line 1027
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    const-class v7, Ljavax/xml/bind/annotation/XmlElement;

    invoke-interface {p0, v7}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlElement;

    .line 1028
    .local v1, "element":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v1, :cond_4

    .line 1029
    invoke-interface {v1}, Ljavax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v4

    .line 1030
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, p2

    .line 1033
    goto :goto_0

    .line 1035
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    const-class v7, Ljavax/xml/bind/annotation/XmlElementRef;

    invoke-interface {p0, v7}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/XmlElementRef;

    .line 1036
    .local v2, "elementRef":Ljavax/xml/bind/annotation/XmlElementRef;
    if-eqz v2, :cond_5

    .line 1037
    invoke-interface {v2}, Ljavax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v4

    .line 1038
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1041
    if-eqz p1, :cond_5

    .line 1042
    const-class v7, Ljavax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ljavax/xml/bind/annotation/XmlRootElement;

    .line 1043
    .local v5, "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v5, :cond_5

    .line 1044
    invoke-interface {v5}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v4

    .line 1045
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1053
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    :cond_5
    const-class v7, Ljavax/xml/bind/annotation/XmlValue;

    invoke-interface {p0, v7}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlValue;

    .line 1054
    .local v6, "valueInfo":Ljavax/xml/bind/annotation/XmlValue;
    if-eqz v6, :cond_6

    .line 1055
    const-string v4, "value"

    goto :goto_0

    .line 1058
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findRootElementAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljavax/xml/bind/annotation/XmlRootElement;
    .locals 6
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x1

    .line 1064
    const-class v1, Ljavax/xml/bind/annotation/XmlRootElement;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlRootElement;

    return-object v0
.end method

.method private isDataHandler(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    const-string v0, "javax.activation.DataHandler"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected _doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 731
    const-class v0, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v9

    .line 755
    :cond_0
    :goto_0
    return-object v8

    .line 738
    :cond_1
    const-class v1, Ljavax/xml/bind/annotation/XmlElement;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlElement;

    .line 739
    .local v7, "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v7, :cond_2

    .line 740
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v8

    .line 741
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-ne v8, v0, :cond_0

    .line 748
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    instance-of v0, p1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    move-object v6, p1

    .line 749
    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 750
    .local v6, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    const-class v0, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findFieldAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .end local v7    # "annotation":Ljavax/xml/bind/annotation/XmlElement;
    check-cast v7, Ljavax/xml/bind/annotation/XmlElement;

    .line 751
    .restart local v7    # "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-eq v0, v1, :cond_3

    .line 752
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .end local v6    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_3
    move-object v8, v9

    .line 755
    goto :goto_0
.end method

.method protected _typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 10
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 336
    const-class v1, Ljavax/xml/bind/annotation/XmlElements;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/XmlElements;

    .line 337
    .local v8, "elems":Ljavax/xml/bind/annotation/XmlElements;
    const-class v1, Ljavax/xml/bind/annotation/XmlElementRefs;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlElementRefs;

    .line 338
    .local v7, "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    if-nez v8, :cond_0

    if-nez v7, :cond_0

    move-object v6, v9

    .line 347
    :goto_0
    return-object v6

    .line 342
    :cond_0
    new-instance v6, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v6}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 344
    .local v6, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-interface {v6, v0, v9}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v6

    .line 346
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-interface {v6, v0}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v6

    .line 347
    goto :goto_0
.end method

.method protected findAccessType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljavax/xml/bind/annotation/XmlAccessType;
    .locals 7
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    const/4 v3, 0x1

    .line 276
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlAccessorType;

    .line 277
    .local v6, "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlAccessorType;->value()Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 17
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Z)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    if-eqz v1, :cond_1

    .line 1079
    check-cast p1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .end local p1    # "am":Lorg/codehaus/jackson/map/introspect/Annotated;
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapterForClass(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1120
    :cond_0
    :goto_0
    return-object v7

    .line 1082
    .restart local p1    # "am":Lorg/codehaus/jackson/map/introspect/Annotated;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v15

    .line 1084
    .local v15, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_2

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    .line 1085
    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v15

    .line 1089
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Member;

    .line 1091
    .local v14, "member":Ljava/lang/reflect/Member;
    if-eqz v14, :cond_3

    .line 1092
    invoke-interface {v14}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    .line 1093
    .local v16, "potentialAdaptee":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v16, :cond_3

    .line 1094
    const-class v1, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1095
    .local v8, "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v8, :cond_3

    .line 1096
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1097
    .local v7, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1104
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v16    # "potentialAdaptee":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1105
    .restart local v8    # "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v8, :cond_4

    .line 1106
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1107
    .restart local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1111
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    .line 1112
    .local v9, "adapters":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;
    if-eqz v9, :cond_5

    .line 1113
    invoke-interface {v9}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;->value()[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-result-object v10

    .local v10, "arr$":[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_5

    aget-object v12, v10, v11

    .line 1114
    .local v12, "info":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1115
    .restart local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1113
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1120
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "arr$":[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v11    # "i$":I
    .end local v12    # "info":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v13    # "len$":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected findAdapterForClass(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 4
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Z)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1144
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1145
    .local v0, "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v0, :cond_0

    .line 1146
    invoke-interface {v0}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 1147
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 1149
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;
    .locals 9
    .param p2, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p3, "includePackage"    # Z
    .param p4, "includeClass"    # Z
    .param p5, "includeSuperclasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "ZZZ)TA;"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v7, 0x0

    .line 864
    instance-of v6, p2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v6, :cond_1

    move-object v6, p2

    .line 865
    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findPropertyDescriptor(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    .line 866
    .local v4, "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v4, :cond_1

    .line 867
    new-instance v6, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;

    invoke-direct {v6, v4, v7}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;-><init>(Ljava/beans/PropertyDescriptor;Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;)V

    invoke-virtual {v6, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 868
    .local v1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v1, :cond_1

    .line 921
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    .end local v4    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_0
    :goto_0
    return-object v1

    .line 874
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    .line 875
    .local v0, "annType":Ljava/lang/reflect/AnnotatedElement;
    const/4 v2, 0x0

    .line 880
    .local v2, "memberClass":Ljava/lang/Class;
    instance-of v6, p2, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    if-eqz v6, :cond_3

    move-object v3, p2

    .line 881
    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 882
    .local v3, "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 883
    .restart local v1    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v1, :cond_0

    .line 886
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getMember()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 906
    .end local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    .end local v3    # "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    .line 907
    if-eqz p5, :cond_6

    .line 908
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 909
    .local v5, "superclass":Ljava/lang/Class;
    :goto_2
    if-eqz v5, :cond_6

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_6

    .line 910
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 911
    if-nez v1, :cond_0

    .line 914
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 915
    goto :goto_2

    .line 888
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    .end local v5    # "superclass":Ljava/lang/Class;
    .restart local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    :cond_3
    invoke-interface {v0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 889
    .restart local v1    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v1, :cond_0

    .line 892
    instance-of v6, v0, Ljava/lang/reflect/Member;

    if-eqz v6, :cond_4

    .line 893
    check-cast v0, Ljava/lang/reflect/Member;

    .end local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 894
    if-eqz p4, :cond_2

    .line 895
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 896
    if-eqz v1, :cond_2

    goto :goto_0

    .line 900
    .restart local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    :cond_4
    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_5

    move-object v2, v0

    .line 901
    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    .line 903
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported annotated member: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 917
    .end local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    :cond_6
    if-eqz p3, :cond_7

    .line 918
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_0

    :cond_7
    move-object v1, v7

    .line 921
    goto/16 :goto_0
.end method

.method public findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 3
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
    .line 209
    .local p2, "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAccessType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v0

    .line 210
    .local v0, "at":Ljavax/xml/bind/annotation/XmlAccessType;
    if-nez v0, :cond_0

    .line 247
    .end local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :goto_0
    return-object p2

    .line 221
    .restart local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;->$SwitchMap$javax$xml$bind$annotation$XmlAccessType:[I

    invoke-virtual {v0}, Ljavax/xml/bind/annotation/XmlAccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 235
    :pswitch_2
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 241
    :pswitch_3
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 157
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    .line 158
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonCachable;
    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonCachable;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    :goto_0
    return-object v1

    .line 159
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 161
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 4
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isInvisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    const/4 v1, 0x0

    .line 796
    :cond_0
    :goto_0
    return-object v1

    .line 790
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 791
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    .line 721
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 722
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
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
    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    .line 699
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 657
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 658
    .local v0, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 659
    new-instance v2, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;

    invoke-direct {v2, v0, p2}, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;-><init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 672
    :goto_0
    return-object v2

    .line 665
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 666
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 667
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0

    .line 672
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 618
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "enumValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Ljavax/xml/bind/annotation/XmlEnumValue;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/annotation/XmlEnumValue;

    .line 621
    .local v3, "xmlEnumValue":Ljavax/xml/bind/annotation/XmlEnumValue;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljavax/xml/bind/annotation/XmlEnumValue;->value()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "enumValue":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 622
    .end local v3    # "xmlEnumValue":Ljavax/xml/bind/annotation/XmlEnumValue;
    .restart local v2    # "enumValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e1":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not locate Enum entry \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (Enum class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected findFieldAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 5
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 935
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 936
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 944
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-object v4

    .line 934
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/lang/Object;

    if-ne p2, v4, :cond_4

    .line 944
    :cond_3
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 942
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 943
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findPropertyDescriptor(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 595
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbSpecifiedPropertyName(Ljava/beans/PropertyDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 598
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findJaxbSpecifiedPropertyName(Ljava/beans/PropertyDescriptor;)Ljava/lang/String;
    .locals 3
    .param p1, "prop"    # Ljava/beans/PropertyDescriptor;

    .prologue
    .line 1005
    new-instance v0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;-><init>(Ljava/beans/PropertyDescriptor;Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;)V

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
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
    .line 323
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
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

    .line 326
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected findPropertyDescriptor(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/beans/PropertyDescriptor;
    .locals 3
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 990
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->getDescriptors(Ljava/lang/Class;)Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;

    move-result-object v1

    .line 992
    .local v1, "descs":Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->findByMethodName(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 998
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    return-object v0
.end method

.method public findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 809
    const/4 v0, 0x0

    return-object v0
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
    .line 312
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 3
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findRootElementAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljavax/xml/bind/annotation/XmlRootElement;

    move-result-object v0

    .line 168
    .local v0, "elem":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "name":Ljava/lang/String;
    const-string v2, "##default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .line 173
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 4
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isInvisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const/4 v1, 0x0

    .line 645
    :cond_0
    :goto_0
    return-object v1

    .line 639
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 640
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 505
    const-class v2, Ljavax/xml/bind/annotation/XmlElementWrapper;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlElementWrapper;

    .line 506
    .local v1, "w":Ljavax/xml/bind/annotation/XmlElementWrapper;
    if-eqz v1, :cond_1

    .line 507
    invoke-interface {v1}, Ljavax/xml/bind/annotation/XmlElementWrapper;->nillable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 516
    :goto_0
    return-object v2

    .line 507
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    .line 509
    :cond_1
    const-class v2, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlElement;

    .line 510
    .local v0, "e":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v0, :cond_3

    .line 511
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlElement;->nillable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_3
    move-object v2, p2

    .line 516
    goto :goto_0
.end method

.method public findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 14
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 542
    const-class v1, Ljavax/xml/bind/annotation/XmlType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Ljavax/xml/bind/annotation/XmlType;

    .line 543
    .local v13, "type":Ljavax/xml/bind/annotation/XmlType;
    if-nez v13, :cond_1

    .line 544
    const/4 v9, 0x0

    .line 575
    :cond_0
    :goto_0
    return-object v9

    .line 546
    :cond_1
    invoke-interface {v13}, Ljavax/xml/bind/annotation/XmlType;->propOrder()[Ljava/lang/String;

    move-result-object v9

    .line 547
    .local v9, "order":[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v0, v9

    if-nez v0, :cond_3

    .line 548
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->getDescriptors(Ljava/lang/Class;)Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;

    move-result-object v11

    .line 552
    .local v11, "props":Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v9

    .local v8, "len":I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 553
    aget-object v10, v9, v7

    .line 554
    .local v10, "propName":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->findByPropertyName(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 552
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, "get"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 567
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->findByMethodName(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v6

    .line 571
    .local v6, "desc":Ljava/beans/PropertyDescriptor;
    if-eqz v6, :cond_4

    .line 572
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    goto :goto_2
.end method

.method public findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x1

    .line 581
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorOrder;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlAccessorOrder;

    .line 582
    .local v6, "order":Ljavax/xml/bind/annotation/XmlAccessorOrder;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlAccessorOrder;->value()Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v0

    sget-object v1, Ljavax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Ljavax/xml/bind/annotation/XmlAccessOrder;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 9
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 481
    const-class v1, Ljavax/xml/bind/annotation/XmlElement;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlElement;

    .line 482
    .local v6, "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, v8

    .line 494
    :goto_0
    return-object v0

    .line 490
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 491
    .local v7, "rawPropType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isIndexedType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v8

    .line 492
    goto :goto_0

    .line 494
    :cond_2
    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
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
    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 445
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 446
    .local v0, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 447
    new-instance v2, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;

    invoke-direct {v2, v0, p2}, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;-><init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 457
    :goto_0
    return-object v2

    .line 451
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 452
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 453
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 457
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findPropertyDescriptor(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 762
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbSpecifiedPropertyName(Ljava/beans/PropertyDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 765
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 17
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
    .line 354
    const-class v1, Ljavax/xml/bind/annotation/XmlElements;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Ljavax/xml/bind/annotation/XmlElements;

    .line 355
    .local v10, "elems":Ljavax/xml/bind/annotation/XmlElements;
    if-eqz v10, :cond_1

    .line 356
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v10}, Ljavax/xml/bind/annotation/XmlElements;->value()[Ljavax/xml/bind/annotation/XmlElement;

    move-result-object v6

    .local v6, "arr$":[Ljavax/xml/bind/annotation/XmlElement;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_8

    aget-object v7, v6, v11

    .line 358
    .local v7, "elem":Ljavax/xml/bind/annotation/XmlElement;
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, "name":Ljava/lang/String;
    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x0

    .line 360
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 365
    .end local v6    # "arr$":[Ljavax/xml/bind/annotation/XmlElement;
    .end local v7    # "elem":Ljavax/xml/bind/annotation/XmlElement;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    :cond_1
    const-class v1, Ljavax/xml/bind/annotation/XmlElementRefs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/XmlElementRefs;

    .line 366
    .local v9, "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    if-eqz v9, :cond_7

    .line 367
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v9}, Ljavax/xml/bind/annotation/XmlElementRefs;->value()[Ljavax/xml/bind/annotation/XmlElementRef;

    move-result-object v6

    .local v6, "arr$":[Ljavax/xml/bind/annotation/XmlElementRef;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v12, :cond_8

    aget-object v8, v6, v11

    .line 369
    .local v8, "elemRef":Ljavax/xml/bind/annotation/XmlElementRef;
    invoke-interface {v8}, Ljavax/xml/bind/annotation/XmlElementRef;->type()Ljava/lang/Class;

    move-result-object v14

    .line 371
    .local v14, "refType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/bind/JAXBElement;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 373
    invoke-interface {v8}, Ljavax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v13

    .line 374
    .restart local v13    # "name":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    :cond_2
    const-class v0, Ljavax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Ljavax/xml/bind/annotation/XmlRootElement;

    .line 376
    .local v16, "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v16, :cond_3

    .line 377
    invoke-interface/range {v16 .. v16}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v13

    .line 380
    .end local v16    # "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    :cond_3
    if-eqz v13, :cond_4

    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 383
    :cond_5
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-direct {v0, v14, v13}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v13    # "name":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 389
    .end local v6    # "arr$":[Ljavax/xml/bind/annotation/XmlElementRef;
    .end local v8    # "elemRef":Ljavax/xml/bind/annotation/XmlElementRef;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "refType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    :cond_7
    const/4 v15, 0x0

    .end local v9    # "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    :cond_8
    return-object v15
.end method

.method public findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 8
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x0

    .line 394
    const-class v1, Ljavax/xml/bind/annotation/XmlType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlType;

    .line 395
    .local v7, "type":Ljavax/xml/bind/annotation/XmlType;
    if-eqz v7, :cond_0

    .line 396
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlType;->name()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "name":Ljava/lang/String;
    const-string v0, "##default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    .end local v6    # "name":Ljava/lang/String;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

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
    .line 302
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDescriptors(Ljava/lang/Class;)Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_propertyDescriptors:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 967
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;>;"
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 969
    .local v0, "descriptors":Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 971
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->find(Ljava/lang/Class;)Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 975
    sget-object v3, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_propertyDescriptors:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 977
    :cond_1
    return-object v0

    .line 967
    .end local v0    # "descriptors":Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;

    move-object v0, v3

    goto :goto_0

    .line 972
    .restart local v0    # "descriptors":Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Ljava/beans/IntrospectionException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem introspecting bean properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/beans/IntrospectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 5
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 133
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_jaxbPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    :cond_0
    :goto_1
    return v3

    .line 133
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    const-class v4, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    if-eq v0, v4, :cond_0

    .line 141
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 433
    const-class v0, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 411
    const-class v0, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isIndexedType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInvisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 13
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    const/4 v3, 0x1

    .line 826
    const/4 v11, 0x1

    .line 828
    .local v11, "invisible":Z
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v7, v8, v10

    .line 829
    .local v7, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const/4 v11, 0x0

    .line 828
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 835
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    if-eqz v11, :cond_4

    .line 836
    sget-object v6, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 837
    .local v6, "accessType":Ljavax/xml/bind/annotation/XmlAccessType;
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/XmlAccessorType;

    .line 838
    .local v9, "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    if-eqz v9, :cond_2

    .line 839
    invoke-interface {v9}, Ljavax/xml/bind/annotation/XmlAccessorType;->value()Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v6

    .line 842
    :cond_2
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;

    if-eq v6, v0, :cond_5

    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    if-ne v6, v0, :cond_3

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v11, v3

    .line 845
    .end local v6    # "accessType":Ljavax/xml/bind/annotation/XmlAccessType;
    .end local v9    # "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    :cond_4
    :goto_1
    return v11

    .line 842
    .restart local v6    # "accessType":Ljavax/xml/bind/annotation/XmlAccessType;
    .restart local v9    # "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
