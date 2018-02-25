.class Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
.super Ljava/lang/Object;
.source "BeanBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/mrbean/BeanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeDescription"
.end annotation


# instance fields
.field private final _asmType:Lorg/codehaus/jackson/org/objectweb/asm/Type;

.field private _jacksonType:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    .line 397
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lorg/codehaus/jackson/org/objectweb/asm/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_asmType:Lorg/codehaus/jackson/org/objectweb/asm/Type;

    .line 398
    return-void
.end method

.method public static moreSpecificType(Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;)Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    .locals 3
    .param p0, "desc1"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    .param p1, "desc2"    # Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;

    .prologue
    .line 458
    invoke-virtual {p0}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 459
    .local v0, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 461
    .local v1, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    .end local p1    # "desc2":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    :goto_0
    return-object p1

    .line 464
    .restart local p1    # "desc2":Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, p0

    .line 465
    goto :goto_0

    .line 468
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public erasedSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getErasedSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public genericSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getGenericSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadOpcode()I
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_asmType:Lorg/codehaus/jackson/org/objectweb/asm/Type;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getOpcode(I)I

    move-result v0

    return v0
.end method

.method public getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnOpcode()I
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_asmType:Lorg/codehaus/jackson/org/objectweb/asm/Type;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getOpcode(I)I

    move-result v0

    return v0
.end method

.method public hasGenerics()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/codehaus/jackson/mrbean/BeanBuilder$TypeDescription;->_jacksonType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
