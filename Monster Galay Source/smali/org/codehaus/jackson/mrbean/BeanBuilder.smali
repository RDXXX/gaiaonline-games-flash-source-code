.class public Lorg/codehaus/jackson/mrbean/BeanBuilder;
.super Ljava/lang/Object;
.source "BeanBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;,
        Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    }
.end annotation


# instance fields
.field protected _beanProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected final _implementedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

.field protected _unsupportedMethods:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "implType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_beanProperties:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_unsupportedMethods:Ljava/util/LinkedHashMap;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_implementedType:Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 36
    return-void
.end method

.method private addGetter(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->findProperty(Ljava/lang/String;)Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;

    move-result-object v0

    .line 165
    .local v0, "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    invoke-virtual {v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->setGetter(Ljava/lang/reflect/Method;)V

    .line 168
    :cond_0
    return-void
.end method

.method private addSetter(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->findProperty(Ljava/lang/String;)Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;

    move-result-object v0

    .line 173
    .local v0, "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    invoke-virtual {v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->setSetter(Ljava/lang/reflect/Method;)V

    .line 176
    :cond_0
    return-void
.end method

.method private static buildGetterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSetterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createField(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V
    .locals 7
    .param p0, "cw"    # Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    .param p1, "prop"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    .param p2, "type"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->genericSignature()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "sig":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->erasedSignature()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "desc":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getFieldName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/jackson/org/objectweb/asm/FieldVisitor;

    move-result-object v6

    .line 216
    .local v6, "fv":Lorg/codehaus/jackson/org/objectweb/asm/FieldVisitor;
    invoke-interface {v6}, Lorg/codehaus/jackson/org/objectweb/asm/FieldVisitor;->visitEnd()V

    .line 217
    return-void

    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "sig":Ljava/lang/String;
    .end local v6    # "fv":Lorg/codehaus/jackson/org/objectweb/asm/FieldVisitor;
    :cond_0
    move-object v4, v5

    .line 213
    goto :goto_0
.end method

.method private static createGetter(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V
    .locals 9
    .param p0, "cw"    # Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    .param p1, "internalClassName"    # Ljava/lang/String;
    .param p2, "prop"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    .param p3, "propertyType"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 249
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 250
    .local v6, "getter":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 251
    invoke-static {v6}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "desc":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "methodName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->genericSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "sig":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;

    move-result-object v7

    .line 260
    .local v7, "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    invoke-interface {v7}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 261
    const/16 v0, 0x19

    invoke-interface {v7, v0, v8}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 262
    const/16 v0, 0xb4

    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->erasedSignature()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v0, p1, v1, v5}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->getReturnOpcode()I

    move-result v0

    invoke-interface {v7, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 264
    invoke-interface {v7, v8, v8}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 265
    invoke-interface {v7}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 266
    return-void

    .line 254
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "sig":Ljava/lang/String;
    .end local v7    # "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->erasedSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .restart local v3    # "desc":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->buildGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "methodName":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 258
    goto :goto_1
.end method

.method private static createSetter(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V
    .locals 10
    .param p0, "cw"    # Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    .param p1, "internalClassName"    # Ljava/lang/String;
    .param p2, "prop"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    .param p3, "propertyType"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 224
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v7

    .line 225
    .local v7, "setter":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_0

    .line 226
    invoke-static {v7}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "desc":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "methodName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->genericSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")V"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "sig":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    .line 233
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 234
    .local v6, "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    invoke-interface {v6}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 235
    const/16 v0, 0x19

    invoke-interface {v6, v0, v9}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 236
    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->getLoadOpcode()I

    move-result v0

    invoke-interface {v6, v0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 237
    const/16 v0, 0xb5

    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->erasedSignature()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v0, p1, v1, v5}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/16 v0, 0xb1

    invoke-interface {v6, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 240
    invoke-interface {v6, v9, v9}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 241
    invoke-interface {v6}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 242
    return-void

    .line 229
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "sig":Ljava/lang/String;
    .end local v6    # "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->erasedSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")V"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "desc":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->buildSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "methodName":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 232
    goto :goto_1
.end method

.method private static createUnimplementedMethod(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 9
    .param p0, "cw"    # Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    .param p1, "internalClassName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 275
    const-class v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->getInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "exceptionName":Ljava/lang/String;
    invoke-static {p2}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x1

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;

    move-result-object v7

    .line 280
    .local v7, "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    const/16 v0, 0xbb

    invoke-interface {v7, v0, v6}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 281
    const/16 v0, 0x59

    invoke-interface {v7, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (not a setter/getter, could not materialize)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 283
    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-interface {v7, v0, v6, v1, v4}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v0, 0xbf

    invoke-interface {v7, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 285
    invoke-interface {v7, v8, v8}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 286
    invoke-interface {v7}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 287
    return-void
.end method

.method private findProperty(Ljava/lang/String;)Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_beanProperties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;

    .line 181
    .local v0, "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;

    .end local v0    # "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    invoke-direct {v0, p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v0    # "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    iget-object v1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_beanProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    return-object v0
.end method

.method private static generateDefaultConstructor(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V
    .locals 8
    .param p0, "cw"    # Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    .param p1, "superName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 202
    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 203
    .local v6, "mv":Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;
    invoke-interface {v6}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 204
    const/16 v0, 0x19

    invoke-interface {v6, v0, v7}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 205
    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {v6, v0, p1, v1, v2}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v0, 0xb1

    invoke-interface {v6, v0}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 207
    invoke-interface {v6, v7, v7}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 208
    invoke-interface {v6}, Lorg/codehaus/jackson/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 209
    return-void
.end method

.method private static getInternalClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "."

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 142
    const-string v3, "is"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    .line 143
    .local v1, "prefixLen":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "body":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 142
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "prefixLen":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private static final returnsBoolean(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build(Ljava/lang/String;)[B
    .locals 19
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v2, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 98
    .local v2, "cw":Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;
    invoke-static/range {p1 .. p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->getInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "internalClass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_implementedType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->getInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "implName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_implementedType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const-string v7, "java/lang/Object"

    .line 106
    .local v7, "superName":Ljava/lang/String;
    const/16 v3, 0x31

    const/16 v4, 0x21

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    invoke-virtual/range {v2 .. v8}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v2, v7}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->generateDefaultConstructor(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_beanProperties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;

    .line 117
    .local v17, "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->selectType(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    move-result-object v18

    .line 118
    .local v18, "type":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->createField(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V

    .line 120
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->hasConcreteGetter()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v5, v0, v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->createGetter(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V

    .line 123
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;->hasConcreteSetter()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v5, v0, v1}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->createSetter(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)V

    goto :goto_1

    .line 109
    .end local v7    # "superName":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "prop":Lorg/codehaus/jackson/mrbean/BeanBuilder$Property;
    .end local v18    # "type":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    :cond_2
    move-object v7, v13

    .line 110
    .restart local v7    # "superName":Ljava/lang/String;
    const/16 v9, 0x31

    const/16 v10, 0x21

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v2

    move-object v11, v5

    invoke-virtual/range {v8 .. v14}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_unsupportedMethods:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 128
    .local v16, "m":Ljava/lang/reflect/Method;
    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->createUnimplementedMethod(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 130
    .end local v16    # "m":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v2}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->visitEnd()V

    .line 131
    invoke-virtual {v2}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public implement(Z)Lorg/codehaus/jackson/mrbean/BeanBuilder;
    .locals 12
    .param p1, "failOnUnrecognized"    # Z

    .prologue
    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v5, "implTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    iget-object v9, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_implementedType:Ljava/lang/Class;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v9, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_implementedType:Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    invoke-static {v9, v10, v5}, Lorg/codehaus/jackson/mrbean/BeanUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 59
    .local v4, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v1, v3

    .line 60
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v0, v9

    .line 63
    .local v0, "argCount":I
    if-nez v0, :cond_3

    .line 64
    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->returnsBoolean(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 65
    :cond_1
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->addGetter(Ljava/lang/reflect/Method;)V

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    const/4 v9, 0x1

    if-ne v0, v9, :cond_4

    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 69
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->addSetter(Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 74
    :cond_4
    invoke-static {v7}, Lorg/codehaus/jackson/mrbean/BeanUtil;->isConcrete(Ljava/lang/reflect/Member;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_unsupportedMethods:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 77
    if-eqz p1, :cond_5

    .line 78
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized abstract method \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' (not a getter or setter) -- to avoid exception, disable AbstractTypeMaterializer.Feature.FAIL_ON_UNMATERIALIZED_METHOD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 81
    :cond_5
    iget-object v9, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder;->_unsupportedMethods:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    .end local v0    # "argCount":I
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "len$":I
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "methodName":Ljava/lang/String;
    :cond_6
    return-object p0
.end method
