.class public abstract Lorg/codehaus/jackson/map/PropertyNamingStrategy;
.super Ljava/lang/Object;
.source "PropertyNamingStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nameForField(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "field"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method

.method public nameForGetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "method"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method

.method public nameForSetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "method"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method
