.class Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;
.super Ljava/lang/Object;
.source "JaxbAnnotationIntrospector.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotatedProperty"
.end annotation


# instance fields
.field private final pd:Ljava/beans/PropertyDescriptor;


# direct methods
.method private constructor <init>(Ljava/beans/PropertyDescriptor;)V
    .locals 0
    .param p1, "pd"    # Ljava/beans/PropertyDescriptor;

    .prologue
    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput-object p1, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->pd:Ljava/beans/PropertyDescriptor;

    .line 1174
    return-void
.end method

.method synthetic constructor <init>(Ljava/beans/PropertyDescriptor;Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/beans/PropertyDescriptor;
    .param p2, "x1"    # Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;-><init>(Ljava/beans/PropertyDescriptor;)V

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->pd:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1192
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1194
    .local v0, "ann":Ljava/lang/annotation/Annotation;, "TT;"
    if-eqz v0, :cond_0

    .line 1202
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;, "TT;"
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->pd:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 1202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 1210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x1

    .line 1178
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->pd:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1179
    .local v0, "m":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v1

    .line 1182
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$AnnotatedProperty;->pd:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1186
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
