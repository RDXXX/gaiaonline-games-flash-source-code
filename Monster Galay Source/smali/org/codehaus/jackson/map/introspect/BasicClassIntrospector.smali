.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;
.super Lorg/codehaus/jackson/map/ClassIntrospector;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;,
        Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;,
        Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;,
        Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ClassIntrospector",
        "<",
        "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

.field public static final DEFAULT_SETTER_AND_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

.field public static final DEFAULT_SETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

.field public static final instance:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>(Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    .line 107
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    .line 112
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_AND_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 120
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5
    .param p3, "r"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "cfg":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v2

    .line 184
    .local v2, "useAnnotations":Z
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 185
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    if-eqz v2, :cond_0

    .end local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    invoke-static {p2, v1, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 186
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    new-instance v3, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v3

    .line 185
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .restart local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "x1"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 4
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "r"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 172
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isAnnotationProcessingEnabled()Z

    move-result v2

    .line 173
    .local v2, "useAnnotations":Z
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 174
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_0

    .end local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    invoke-static {v3, v1, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 175
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveCreators(Z)V

    .line 176
    new-instance v3, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-direct {v3, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v3

    .line 174
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .restart local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "x1"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "r"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isAnnotationProcessingEnabled()Z

    move-result v2

    .line 156
    .local v2, "useAnnotations":Z
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 157
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_0

    .end local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    invoke-static {v3, v1, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 159
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->getDeserializationMethodFilter(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;Z)V

    .line 161
    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveCreators(Z)V

    .line 163
    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields(Z)V

    .line 165
    new-instance v3, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-direct {v3, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v3

    .line 157
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .restart local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5
    .param p3, "r"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "cfg":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v2

    .line 194
    .local v2, "useAnnotations":Z
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 195
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    if-eqz v2, :cond_0

    .end local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    invoke-static {p2, v1, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 196
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    new-instance v3, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v3

    .line 195
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .restart local v1    # "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "x1"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 4
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "r"    # Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 135
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 137
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->getSerializationMethodFilter(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;Z)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveCreators(Z)V

    .line 147
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields(Z)V

    .line 148
    new-instance v2, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-direct {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v2
.end method

.method protected getDeserializationMethodFilter(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .locals 1
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 223
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_AND_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    goto :goto_0
.end method

.method protected getSerializationMethodFilter(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .locals 1
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 211
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    return-object v0
.end method
