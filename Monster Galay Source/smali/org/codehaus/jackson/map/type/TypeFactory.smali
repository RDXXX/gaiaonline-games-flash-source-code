.class public final Lorg/codehaus/jackson/map/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"


# static fields
.field private static final NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

.field public static final instance:Lorg/codehaus/jackson/map/type/TypeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected final _modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

.field protected final _parser:Lorg/codehaus/jackson/map/type/TypeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/TypeParser;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    .line 73
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/type/TypeParser;[Lorg/codehaus/jackson/map/type/TypeModifier;)V
    .locals 0
    .param p1, "p"    # Lorg/codehaus/jackson/map/type/TypeParser;
    .param p2, "mods"    # [Lorg/codehaus/jackson/map/type/TypeModifier;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    .line 77
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    .line 78
    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 919
    .local v0, "typeParams":[Lorg/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v1

    .line 926
    :goto_0
    return-object v1

    .line 923
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 924
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v1

    goto :goto_0
.end method

.method protected static _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 4
    .param p0, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 978
    .local v0, "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 979
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p1, :cond_0

    .line 992
    .end local v0    # "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    :goto_0
    return-object v0

    .line 983
    .restart local v0    # "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 984
    .local v1, "parent":Ljava/lang/reflect/Type;
    if-eqz v1, :cond_1

    .line 985
    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v3

    .line 986
    .local v3, "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    if-eqz v3, :cond_1

    .line 987
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 988
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 992
    .end local v3    # "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 8
    .param p0, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v1, p0}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 998
    .local v1, "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 999
    .local v6, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v6, p1, :cond_0

    .line 1026
    .end local v1    # "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    :goto_0
    return-object v1

    .line 1003
    .restart local v1    # "current":Lorg/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1006
    .local v5, "parents":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_2

    .line 1007
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1008
    .local v4, "parent":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v7

    .line 1009
    .local v7, "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    if-eqz v7, :cond_1

    .line 1010
    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1011
    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1007
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1017
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "parent":Ljava/lang/reflect/Type;
    .end local v7    # "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1018
    .restart local v4    # "parent":Ljava/lang/reflect/Type;
    if-eqz v4, :cond_3

    .line 1019
    invoke-static {v4, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v7

    .line 1020
    .restart local v7    # "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    if-eqz v7, :cond_3

    .line 1021
    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1022
    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1026
    .end local v7    # "sup":Lorg/codehaus/jackson/map/type/HierarchicType;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method private _mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 905
    .local v0, "typeParams":[Lorg/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    .line 909
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 910
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p1, v1, v2}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v1

    goto :goto_0
.end method

.method public static arrayType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    sget-object v1, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static arrayType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "elementType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static collectionType(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    .local p0, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    sget-object v1, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public static collectionType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "elementType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    .local p0, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public static defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public static fastSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p2, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromClass(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromTypeReference(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    .local p0, "ref":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    .local p0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-static {p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "keyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    .local p0, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    .local p0, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "parameterTypes"    # [Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    .local p0, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 116
    check-cast p0, Ljava/lang/Class;

    .line 119
    .end local p0    # "t":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .restart local p0    # "t":Ljava/lang/reflect/Type;
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static specialize(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    .local p1, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "context"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    .local p0, "ref":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p0}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static unknownType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 9
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 453
    instance-of v6, p1, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 454
    check-cast v1, Ljava/lang/Class;

    .line 458
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 459
    new-instance p2, Lorg/codehaus/jackson/map/type/TypeBindings;

    .end local p2    # "context":Lorg/codehaus/jackson/map/type/TypeBindings;
    invoke-direct {p2, p0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 461
    .restart local p2    # "context":Lorg/codehaus/jackson/map/type/TypeBindings;
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 483
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "resultType":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    iget-object v6, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v6

    if-nez v6, :cond_6

    .line 484
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    .local v0, "arr$":[Lorg/codehaus/jackson/map/type/TypeModifier;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 485
    .local v4, "mod":Lorg/codehaus/jackson/map/type/TypeModifier;
    invoke-virtual {v4, v5, p1, p2, p0}, Lorg/codehaus/jackson/map/type/TypeModifier;->modifyType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "arr$":[Lorg/codehaus/jackson/map/type/TypeModifier;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mod":Lorg/codehaus/jackson/map/type/TypeModifier;
    .end local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 465
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 467
    .end local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_3

    move-object v6, p1

    .line 468
    check-cast v6, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 470
    .end local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 471
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 473
    .end local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_4
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_5

    move-object v6, p1

    .line 474
    check-cast v6, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 477
    .end local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 488
    .restart local v5    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_6
    return-object v5
.end method

.method protected _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 843
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 844
    .local v0, "compType":Lorg/codehaus/jackson/type/JavaType;
    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v1

    return-object v1
.end method

.method protected _fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    .line 735
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 742
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected _fromParamType(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 802
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 803
    .local v6, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 804
    .local v0, "args":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_1

    move v4, v8

    .line 808
    .local v4, "paramCount":I
    :goto_0
    if-nez v4, :cond_2

    .line 809
    sget-object v5, Lorg/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    .line 818
    .local v5, "pt":[Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 819
    invoke-virtual {p0, v6, v5}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 820
    .local v7, "subtype":Lorg/codehaus/jackson/type/JavaType;
    const-class v9, Ljava/util/Map;

    invoke-virtual {p0, v7, v9}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 821
    .local v3, "mapParams":[Lorg/codehaus/jackson/type/JavaType;
    array-length v9, v3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 822
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find 2 type parameters for Map class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 804
    .end local v3    # "mapParams":[Lorg/codehaus/jackson/type/JavaType;
    .end local v4    # "paramCount":I
    .end local v5    # "pt":[Lorg/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    array-length v4, v0

    goto :goto_0

    .line 811
    .restart local v4    # "paramCount":I
    :cond_2
    new-array v5, v4, [Lorg/codehaus/jackson/type/JavaType;

    .line 812
    .restart local v5    # "pt":[Lorg/codehaus/jackson/type/JavaType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 813
    aget-object v9, v0, v2

    invoke-virtual {p0, v9, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    aput-object v9, v5, v2

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 824
    .end local v2    # "i":I
    .restart local v3    # "mapParams":[Lorg/codehaus/jackson/type/JavaType;
    .restart local v7    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    aget-object v8, v3, v8

    aget-object v9, v3, v11

    invoke-static {v6, v8, v9}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v8

    .line 837
    .end local v3    # "mapParams":[Lorg/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    :goto_2
    return-object v8

    .line 826
    :cond_4
    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 827
    invoke-virtual {p0, v6, v5}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 828
    .restart local v7    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    const-class v9, Ljava/util/Collection;

    invoke-virtual {p0, v7, v9}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 829
    .local v1, "collectionParams":[Lorg/codehaus/jackson/type/JavaType;
    array-length v9, v1

    if-eq v9, v11, :cond_5

    .line 830
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find 1 type parameter for Collection class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 832
    :cond_5
    aget-object v8, v1, v8

    invoke-static {v6, v8}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v8

    goto :goto_2

    .line 834
    .end local v1    # "collectionParams":[Lorg/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    :cond_6
    if-nez v4, :cond_7

    .line 835
    new-instance v8, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v8, v6}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 837
    :cond_7
    invoke-virtual {p0, v6, v5}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v8

    goto :goto_2
.end method

.method protected _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/type/JavaType;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 757
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v3

    .line 784
    :goto_0
    return-object v3

    .line 760
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    new-instance v3, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v3, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 763
    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 767
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/type/JavaType;

    .line 768
    .local v1, "keyType":Lorg/codehaus/jackson/type/JavaType;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/type/JavaType;

    move-object v0, v3

    .line 770
    .local v0, "contentType":Lorg/codehaus/jackson/type/JavaType;
    :goto_1
    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v3

    goto :goto_0

    .line 768
    .end local v0    # "contentType":Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_1

    .line 772
    .end local v1    # "keyType":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 774
    :cond_4
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 775
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_5

    .line 776
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/type/JavaType;

    invoke-static {p1, v3}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v3

    goto :goto_0

    .line 778
    :cond_5
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 780
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 781
    new-instance v3, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v3, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 783
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/codehaus/jackson/type/JavaType;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codehaus/jackson/type/JavaType;

    .line 784
    .local v2, "pt":[Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method protected _fromVariable(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez p2, :cond_1

    .line 854
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 858
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;->findType(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 860
    .local v0, "actualType":Lorg/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 869
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 884
    .local v1, "bounds":[Ljava/lang/reflect/Type;
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 885
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p0, v3, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected _fromWildcard(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/WildcardType;
    .param p2, "context"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 898
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected _resolveVariableViaSubTypes(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 7
    .param p1, "leafType"    # Lorg/codehaus/jackson/map/type/HierarchicType;
    .param p2, "variableName"    # Ljava/lang/String;
    .param p3, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 932
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 933
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 934
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 935
    aget-object v2, v4, v0

    .line 936
    .local v2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 938
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v3, v5, v0

    .line 939
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v5, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    .line 940
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSubType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v5

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .end local v3    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->_resolveVariableViaSubTypes(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 947
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    return-object v5

    .line 943
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v3    # "type":Ljava/lang/reflect/Type;
    .restart local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    invoke-virtual {p0, v3, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1

    .line 934
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1
.end method

.method protected _unknownType()Lorg/codehaus/jackson/type/JavaType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method protected constructArrayType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/ArrayType;"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method protected constructArrayType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .param p1, "elementType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 514
    invoke-static {p1}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .param p2, "elementType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .param p2, "elementType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeParser;->parse(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 1
    .param p2, "keyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/type/MapLikeType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 1
    .param p2, "keyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p2

    .line 664
    .local v1, "len":I
    new-array v2, v1, [Lorg/codehaus/jackson/type/JavaType;

    .line 665
    .local v2, "pt":[Lorg/codehaus/jackson/type/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 666
    aget-object v3, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    return-object v3
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .param p2, "parameterTypes"    # [Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 692
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    array-length v1, p2

    if-eq v1, v4, :cond_0

    .line 695
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for arrays ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_0
    aget-object v1, p2, v3

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 713
    .local v0, "resultType":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    return-object v0

    .line 699
    .end local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 701
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 2 parameter types for Map types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_2
    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .restart local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 705
    .end local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 706
    array-length v1, p2

    if-eq v1, v4, :cond_4

    .line 707
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for Collection types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_4
    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    .restart local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 711
    .end local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .restart local v0    # "resultType":Lorg/codehaus/jackson/type/JavaType;
    goto :goto_0
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .param p2, "parameterTypes"    # [Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 622
    .local v4, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v5, v4

    array-length v6, p2

    if-eq v5, v6, :cond_0

    .line 623
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parameter type mismatch for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameters, was given "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 626
    :cond_0
    array-length v5, v4

    new-array v2, v5, [Ljava/lang/String;

    .line 627
    .local v2, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 628
    aget-object v5, v4, v0

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_1
    new-instance v3, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v3, p1, v2, p2}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    .line 631
    .local v3, "resultType":Lorg/codehaus/jackson/type/JavaType;
    return-object v3
.end method

.method public constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, p1, Lorg/codehaus/jackson/map/type/SimpleType;

    if-eqz v2, :cond_4

    .line 295
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not subtype of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_1
    sget-object v2, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    new-instance v3, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {v2, p2, v3}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 305
    .local v1, "subtype":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "h":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 309
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 317
    .end local v0    # "h":Ljava/lang/Object;
    .end local v1    # "subtype":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    :goto_0
    return-object v1

    :cond_4
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 440
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "typeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 15
    .param p3, "bindings"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p1 .. p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v8

    .line 387
    .local v8, "subType":Lorg/codehaus/jackson/map/type/HierarchicType;
    if-nez v8, :cond_0

    .line 388
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not a subtype of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 391
    :cond_0
    move-object v9, v8

    .line 392
    .local v9, "superType":Lorg/codehaus/jackson/map/type/HierarchicType;
    :goto_0
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 393
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v9

    .line 394
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 395
    .local v7, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v5, p0, v7}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 396
    .local v5, "newBindings":Lorg/codehaus/jackson/map/type/TypeBindings;
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 397
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    .line 398
    .local v6, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 399
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v11

    .line 400
    .local v11, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v1

    .line 401
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 402
    aget-object v12, v11, v2

    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "name":Ljava/lang/String;
    sget-object v12, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    aget-object v13, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 404
    .local v10, "type":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v5, v4, v10}, Lorg/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "type":Lorg/codehaus/jackson/type/JavaType;
    .end local v11    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    move-object/from16 p3, v5

    .line 408
    goto :goto_0

    .line 411
    .end local v5    # "newBindings":Lorg/codehaus/jackson/map/type/TypeBindings;
    .end local v7    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_3

    .line 412
    const/4 v12, 0x0

    .line 414
    :goto_2
    return-object v12

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/codehaus/jackson/map/type/TypeBindings;->typesAsArray()[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    goto :goto_2
.end method

.method public findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 359
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p2, :cond_2

    .line 361
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v0

    .line 362
    .local v0, "count":I
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 375
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-object v3

    .line 363
    .restart local v0    # "count":I
    :cond_1
    new-array v3, v0, [Lorg/codehaus/jackson/type/JavaType;

    .line 364
    .local v3, "result":[Lorg/codehaus/jackson/type/JavaType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 365
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/type/JavaType;->containedType(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    aput-object v4, v3, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "result":[Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    new-instance v4, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v4, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {p0, v2, p2, v4}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 644
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1, v1, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public withModifier(Lorg/codehaus/jackson/map/type/TypeModifier;)Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 4
    .param p1, "mod"    # Lorg/codehaus/jackson/map/type/TypeModifier;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codehaus/jackson/map/type/TypeModifier;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;-><init>(Lorg/codehaus/jackson/map/type/TypeParser;[Lorg/codehaus/jackson/map/type/TypeModifier;)V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/type/TypeModifier;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;-><init>(Lorg/codehaus/jackson/map/type/TypeParser;[Lorg/codehaus/jackson/map/type/TypeModifier;)V

    move-object v0, v1

    goto :goto_0
.end method
