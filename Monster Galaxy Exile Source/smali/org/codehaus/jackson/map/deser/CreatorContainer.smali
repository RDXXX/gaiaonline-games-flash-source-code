.class public Lorg/codehaus/jackson/map/deser/CreatorContainer;
.super Ljava/lang/Object;
.source "CreatorContainer.java"


# instance fields
.field final _beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field final _canFixAccess:Z

.field protected _defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field _delegatingConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field _delegatingFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field _intConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field _intFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field _longConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field _longFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field _propertyBasedConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field _propertyBasedConstructorProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field _propertyBasedFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field _propertyBasedFactoryProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field _strConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field _strFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V
    .locals 1
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p2, "canFixAccess"    # Z

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactoryProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 32
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructorProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 36
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 37
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_canFixAccess:Z

    .line 39
    return-void
.end method


# virtual methods
.method public addDelegatingConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 63
    return-void
.end method

.method public addDelegatingFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .param p1, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 94
    return-void
.end method

.method public addIntConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 56
    return-void
.end method

.method public addIntFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .param p1, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 87
    return-void
.end method

.method public addLongConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 59
    return-void
.end method

.method public addLongFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .param p1, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 90
    return-void
.end method

.method public addPropertyConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 8
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p2, "properties"    # [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 67
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v6, "property-based"

    invoke-virtual {p0, p1, v5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 69
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 72
    aget-object v5, p2, v0

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 74
    .local v4, "old":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 75
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate creator property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "old":Ljava/lang/Integer;
    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructorProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 80
    return-void
.end method

.method public addPropertyFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2
    .param p1, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "properties"    # [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 99
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactoryProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 100
    return-void
.end method

.method public addStringConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2
    .param p1, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 53
    return-void
.end method

.method public addStringFactory(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .param p1, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 84
    return-void
.end method

.method public delegatingCreator()Lorg/codehaus/jackson/map/deser/Creator$Delegating;
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_delegatingFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method public getDefaultConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public numberCreator()Lorg/codehaus/jackson/map/deser/Creator$NumberBased;
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_intFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_longFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method public propertyBasedCreator()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedConstructorProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_propertyBasedFactoryProperties:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0
.end method

.method public setDefaultConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 49
    return-void
.end method

.method public stringCreator()Lorg/codehaus/jackson/map/deser/Creator$StringBased;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_strFactory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method protected verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3
    .param p1, "newOne"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p2, "oldOne"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constructors: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_canFixAccess:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 160
    :cond_1
    return-object p1
.end method

.method protected verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "newOne"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "oldOne"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " factory methods: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->_canFixAccess:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 172
    :cond_1
    return-object p1
.end method
