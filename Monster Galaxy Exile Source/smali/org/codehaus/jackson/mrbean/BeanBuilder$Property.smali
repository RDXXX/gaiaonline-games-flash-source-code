.class Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
.super Ljava/lang/Object;
.source "BeanBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/mrbean/BeanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Property"
.end annotation


# instance fields
.field protected final _fieldName:Ljava/lang/String;

.field protected _getter:Ljava/lang/reflect/Method;

.field protected final _name:Ljava/lang/String;

.field protected _setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_name:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_fieldName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method private getterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    .locals 3
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 345
    iget-object v1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 346
    .local v0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    iget-object v2, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    return-object v1
.end method

.method private setterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    .locals 4
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 351
    iget-object v1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 352
    .local v0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    iget-object v2, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    return-object v1
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGetter()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hasConcreteGetter()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/codehaus/jackson/mrbean/BeanUtil;->isConcrete(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConcreteSetter()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/codehaus/jackson/mrbean/BeanUtil;->isConcrete(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    .locals 6
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 358
    iget-object v3, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 359
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->setterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v1

    .line 376
    :cond_0
    :goto_0
    return-object v1

    .line 361
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 362
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v1

    goto :goto_0

    .line 367
    :cond_2
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->setterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v2

    .line 368
    .local v2, "st":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getterType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v0

    .line 369
    .local v0, "gt":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    invoke-static {v2, v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->moreSpecificType(Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v1

    .line 370
    .local v1, "specificType":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    if-nez v1, :cond_0

    .line 371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': incompatible types for getter/setter ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setGetter(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setSetter(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 319
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->_setter:Ljava/lang/reflect/Method;

    return-void
.end method
