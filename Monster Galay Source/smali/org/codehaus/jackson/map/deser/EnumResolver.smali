.class public final Lorg/codehaus/jackson/map/deser/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[TT;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TT;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 23
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public static constructFor(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;
    .locals 9
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum",
            "<TET;>;>(",
            "Ljava/lang/Class",
            "<TET;>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<TET;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<TET;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 33
    .local v2, "enumValues":[Ljava/lang/Enum;, "[TET;"
    if-nez v2, :cond_0

    .line 34
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No enum constants for class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TET;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 38
    .local v1, "e":Ljava/lang/Enum;, "TET;"
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/Enum;, "TET;"
    :cond_1
    new-instance v6, Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-direct {v6, p0, v2, v5}, Lorg/codehaus/jackson/map/deser/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 72
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->constructFor(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/EnumResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 86
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->constructUsingToString(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/EnumResolver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum",
            "<TET;>;>(",
            "Ljava/lang/Class",
            "<TET;>;)",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<TET;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<TET;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 52
    .local v1, "enumValues":[Ljava/lang/Enum;, "[TET;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TET;>;"
    array-length v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 55
    aget-object v0, v1, v2

    .line 56
    .local v0, "e":Ljava/lang/Enum;, "TET;"
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Enum;, "TET;"
    :cond_0
    new-instance v4, Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-direct {v4, p0, v1, v3}, Lorg/codehaus/jackson/map/deser/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v4
.end method


# virtual methods
.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public lastValidIndex()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
