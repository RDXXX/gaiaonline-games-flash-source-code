.class final Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
.super Ljava/lang/Object;
.source "Creator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PropertyBased"
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

.field protected final _defaultValues:[Ljava/lang/Object;

.field protected final _factoryMethod:Ljava/lang/reflect/Method;

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 7
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p2, "ctorProps"    # [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p3, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p4, "factoryProps"    # [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_ctor:Ljava/lang/reflect/Constructor;

    .line 226
    iput-object v6, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_factoryMethod:Ljava/lang/reflect/Method;

    .line 227
    move-object v4, p2

    .line 235
    .local v4, "props":[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_properties:Ljava/util/HashMap;

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "defValues":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 239
    aget-object v3, v4, v1

    .line 240
    .local v3, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_properties:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    if-nez v0, :cond_0

    .line 243
    new-array v0, v2, [Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/codehaus/jackson/map/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "defValues":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v4    # "props":[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_2
    if-eqz p3, :cond_3

    .line 229
    iput-object v6, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_ctor:Ljava/lang/reflect/Constructor;

    .line 230
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_factoryMethod:Ljava/lang/reflect/Method;

    .line 231
    move-object v4, p4

    .restart local v4    # "props":[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    goto :goto_0

    .line 233
    .end local v4    # "props":[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    .restart local v0    # "defValues":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "props":[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_4
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_defaultValues:[Ljava/lang/Object;

    .line 249
    return-void
.end method


# virtual methods
.method public build(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 6
    .param p1, "buffer"    # Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_ctor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_ctor:Ljava/lang/reflect/Constructor;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    .local v0, "bean":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->buffered()Lorg/codehaus/jackson/map/deser/PropertyValue;

    move-result-object v2

    .local v2, "pv":Lorg/codehaus/jackson/map/deser/PropertyValue;
    :goto_1
    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/deser/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 282
    iget-object v2, v2, Lorg/codehaus/jackson/map/deser/PropertyValue;->next:Lorg/codehaus/jackson/map/deser/PropertyValue;

    goto :goto_1

    .line 275
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v2    # "pv":Lorg/codehaus/jackson/map/deser/PropertyValue;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_factoryMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bean":Ljava/lang/Object;
    goto :goto_0

    .line 277
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->throwRootCause(Ljava/lang/Throwable;)V

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public properties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;

    .prologue
    .line 264
    new-instance v0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->_properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;-><init>(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;I)V

    return-object v0
.end method
