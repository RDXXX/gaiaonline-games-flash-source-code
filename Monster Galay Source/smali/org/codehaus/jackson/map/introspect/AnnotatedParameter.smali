.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedParameter.java"


# instance fields
.field protected final _annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

.field protected final _owner:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .param p1, "owner"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "ann"    # Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 48
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    .line 49
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 50
    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 55
    return-void
.end method

.method public getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

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
    .line 91
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public getParameterType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/Class;

    .line 107
    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 107
    .local v0, "t":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
