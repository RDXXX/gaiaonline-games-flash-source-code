.class public abstract Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# instance fields
.field protected final _annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

.field protected final _paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .param p1, "classAnn"    # Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .param p2, "paramAnnotations"    # [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 39
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 40
    return-void
.end method


# virtual methods
.method public final addIfNotPresent(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 75
    return-void
.end method

.method public final addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 49
    return-void
.end method

.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "paramIndex"    # I
    .param p2, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 59
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v1, p1

    .line 60
    .local v0, "old":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .end local v0    # "old":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 62
    .restart local v0    # "old":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 64
    :cond_0
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 65
    return-void
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 111
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public abstract getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.end method

.method public final getParameterAnnotations(I)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    if-eqz v0, :cond_0

    .line 123
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v0, p1

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getParameterClass(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameterType(I)Ljava/lang/reflect/Type;
.end method

.method protected getType(Lorg/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/jackson/type/JavaType;
    .locals 9
    .param p1, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lez v7, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/TypeBindings;->childInstance()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object p1

    .line 88
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 89
    .local v6, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 93
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 94
    .local v3, "lowerBound":Ljava/lang/reflect/Type;
    if-nez v3, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 96
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    :goto_1
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v5}, Lorg/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v5    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1

    .line 99
    .end local v0    # "arr$":[Ljava/lang/reflect/TypeVariable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "lowerBound":Ljava/lang/reflect/Type;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    return-object v7
.end method

.method public final resolveParameterType(ILorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I
    .param p2, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method
