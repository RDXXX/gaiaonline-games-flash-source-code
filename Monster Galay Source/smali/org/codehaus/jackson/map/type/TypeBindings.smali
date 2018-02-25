.class public Lorg/codehaus/jackson/map/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"


# static fields
.field private static final NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

.field public static final UNBOUND:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected _bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final _contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _contextType:Lorg/codehaus/jackson/type/JavaType;

.field private final _parentBindings:Lorg/codehaus/jackson/map/type/TypeBindings;

.field protected _placeholders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    .line 20
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->UNBOUND:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V
    .locals 1
    .param p1, "typeFactory"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .param p2, "parent"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .param p4, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 94
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_parentBindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    .line 95
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    .line 96
    iput-object p4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p1, "typeFactory"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 74
    return-void
.end method


# virtual methods
.method public _addPlaceholder(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method protected _resolve()V
    .locals 5

    .prologue
    .line 221
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 224
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v0

    .line 226
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 227
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 228
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 230
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 231
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v1}, Lorg/codehaus/jackson/type/JavaType;->containedTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v1}, Lorg/codehaus/jackson/type/JavaType;->containedType(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 233
    .local v3, "type":Lorg/codehaus/jackson/type/JavaType;
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 242
    :cond_2
    return-void
.end method

.method protected _resolveBindings(Ljava/lang/reflect/Type;)V
    .locals 19
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 315
    :cond_0
    return-void

    .line 256
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v10, p1

    .line 257
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 258
    .local v10, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 259
    .local v2, "args":[Ljava/lang/reflect/Type;
    if-eqz v2, :cond_5

    array-length v0, v2

    move/from16 v16, v0

    if-lez v16, :cond_5

    .line 260
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    .line 261
    .local v12, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    .line 262
    .local v15, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v0, v15

    move/from16 v16, v0

    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 263
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Strange parametrized type (in class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): number of type arguments != number of type parameters ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v2

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vs "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 265
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v7, v2

    .local v7, "len":I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 266
    aget-object v13, v15, v4

    .line 267
    .local v13, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 269
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 277
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object/from16 v17, v0

    aget-object v18, v2, v4

    invoke-virtual/range {v17 .. v19}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_1

    .line 282
    .end local v4    # "i":I
    .end local v7    # "len":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v15    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    .line 311
    .end local v2    # "args":[Ljava/lang/reflect/Type;
    .end local v10    # "pt":Ljava/lang/reflect/ParameterizedType;
    .local v11, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 312
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Type;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_0

    aget-object v6, v3, v5

    .line 313
    .local v6, "intType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 283
    .end local v3    # "arr$":[Ljava/lang/reflect/Type;
    .end local v5    # "i$":I
    .end local v6    # "intType":Ljava/lang/reflect/Type;
    .end local v8    # "len$":I
    .end local v11    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v11, p1

    .line 284
    check-cast v11, Ljava/lang/Class;

    .line 288
    .restart local v11    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    .line 289
    .restart local v15    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v15, :cond_6

    array-length v0, v15

    move/from16 v16, v0

    if-lez v16, :cond_6

    .line 290
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v8, :cond_6

    aget-object v13, v3, v5

    .line 291
    .restart local v13    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    .line 292
    .restart local v9    # "name":Ljava/lang/String;
    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v14, v16, v17

    .line 293
    .local v14, "varType":Ljava/lang/reflect/Type;
    if-eqz v14, :cond_9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 295
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 299
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v14, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 297
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_4
.end method

.method public addBinding(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public childInstance()Lorg/codehaus/jackson/map/type/TypeBindings;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public findType(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolve()V

    .line 140
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/type/JavaType;

    .line 141
    .local v2, "t":Lorg/codehaus/jackson/type/JavaType;
    if-eqz v2, :cond_1

    .line 164
    .end local v2    # "t":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    return-object v2

    .line 144
    .restart local v2    # "t":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    sget-object v2, Lorg/codehaus/jackson/map/type/TypeBindings;->UNBOUND:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 148
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_parentBindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_parentBindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;->findType(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    goto :goto_0

    .line 158
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 159
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 160
    .local v1, "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    .line 163
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    sget-object v2, Lorg/codehaus/jackson/map/type/TypeBindings;->UNBOUND:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 181
    .end local v1    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 182
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "className":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type variable \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' can not be resolved (with context of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v0    # "className":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v3, :cond_6

    .line 184
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_1

    .line 186
    .end local v0    # "className":Ljava/lang/String;
    :cond_6
    const-string v0, "UNKNOWN"

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_1
.end method

.method public getBindingCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolve()V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public resolveType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolve()V

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TypeBindings for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 327
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public typesAsArray()[Lorg/codehaus/jackson/type/JavaType;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->_resolve()V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    .line 210
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/jackson/type/JavaType;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0
.end method
