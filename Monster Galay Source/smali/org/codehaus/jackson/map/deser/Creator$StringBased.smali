.class final Lorg/codehaus/jackson/map/deser/Creator$StringBased;
.super Ljava/lang/Object;
.source "Creator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringBased"
.end annotation


# instance fields
.field protected final _ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _factoryMethod:Ljava/lang/reflect/Method;

.field protected final _valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .param p2, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p3, "factoryMethod"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_valueClass:Ljava/lang/Class;

    .line 40
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_ctor:Ljava/lang/reflect/Constructor;

    .line 41
    if-nez p3, :cond_1

    :goto_1
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_factoryMethod:Ljava/lang/reflect/Method;

    .line 42
    return-void

    .line 40
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public construct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_ctor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_ctor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_factoryMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->_valueClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
