.class final Lcom/google/gson/ReflectingFieldNavigator;
.super Ljava/lang/Object;
.source "ReflectingFieldNavigator.java"


# static fields
.field private static final fieldsCache:Lcom/google/gson/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/Cache",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/FieldAttributes;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final exclusionStrategy:Lcom/google/gson/ExclusionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/gson/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/google/gson/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/gson/ReflectingFieldNavigator;->fieldsCache:Lcom/google/gson/Cache;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/ExclusionStrategy;)V
    .locals 1
    .param p1, "exclusionStrategy"    # Lcom/google/gson/ExclusionStrategy;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ExclusionStrategy;

    iput-object v0, p0, Lcom/google/gson/ReflectingFieldNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 48
    return-void
.end method

.method private getAllFields(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 10
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "declaredType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/FieldAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v9, Lcom/google/gson/ReflectingFieldNavigator;->fieldsCache:Lcom/google/gson/Cache;

    invoke-interface {v9, p1}, Lcom/google/gson/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    .local v5, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/FieldAttributes;>;"
    if-nez v5, :cond_2

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/FieldAttributes;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v5    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/FieldAttributes;>;"
    invoke-direct {p0, p1}, Lcom/google/gson/ReflectingFieldNavigator;->getInheritanceHierarchy(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 80
    .local v2, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 81
    .local v3, "currentClazzFields":[Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-static {v3, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 82
    move-object v1, v3

    .line 83
    .local v1, "classFields":[Ljava/lang/reflect/Field;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v0, v7

    .line 84
    .local v4, "f":Ljava/lang/reflect/Field;
    new-instance v9, Lcom/google/gson/FieldAttributes;

    invoke-direct {v9, v2, v4, p2}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "classFields":[Ljava/lang/reflect/Field;
    .end local v2    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "currentClazzFields":[Ljava/lang/reflect/Field;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    sget-object v9, Lcom/google/gson/ReflectingFieldNavigator;->fieldsCache:Lcom/google/gson/Cache;

    invoke-interface {v9, p1, v5}, Lcom/google/gson/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :cond_2
    return-object v5
.end method

.method private getInheritanceHierarchy(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    .local v2, "topLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v2

    .local v1, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->isSynthetic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_1
    return-object v0
.end method


# virtual methods
.method visitFieldsReflectively(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V
    .locals 8
    .param p1, "objTypePair"    # Lcom/google/gson/ObjectTypePair;
    .param p2, "visitor"    # Lcom/google/gson/ObjectNavigator$Visitor;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getMoreSpecificType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 56
    .local v2, "moreSpecificType":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/google/gson/ReflectingFieldNavigator;->getAllFields(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/FieldAttributes;

    .line 58
    .local v0, "fieldAttributes":Lcom/google/gson/FieldAttributes;
    iget-object v6, p0, Lcom/google/gson/ReflectingFieldNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v6, v0}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/gson/ReflectingFieldNavigator;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-virtual {v0}, Lcom/google/gson/FieldAttributes;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/google/gson/FieldAttributes;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 63
    .local v4, "resolvedTypeOfField":Ljava/lang/reflect/Type;
    invoke-interface {p2, v0, v4, v3}, Lcom/google/gson/ObjectNavigator$Visitor;->visitFieldUsingCustomHandler(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v5

    .line 65
    .local v5, "visitedWithCustomHandler":Z
    if-nez v5, :cond_0

    .line 66
    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    invoke-interface {p2, v0, v4, v3}, Lcom/google/gson/ObjectNavigator$Visitor;->visitArrayField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {p2, v0, v4, v3}, Lcom/google/gson/ObjectNavigator$Visitor;->visitObjectField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v0    # "fieldAttributes":Lcom/google/gson/FieldAttributes;
    .end local v4    # "resolvedTypeOfField":Ljava/lang/reflect/Type;
    .end local v5    # "visitedWithCustomHandler":Z
    :cond_2
    return-void
.end method
