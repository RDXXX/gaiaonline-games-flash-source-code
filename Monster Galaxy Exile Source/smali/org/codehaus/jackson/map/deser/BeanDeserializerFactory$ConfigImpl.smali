.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
.super Lorg/codehaus/jackson/map/DeserializerFactory$Config;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigImpl"
.end annotation


# static fields
.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected static final NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected static final NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;


# instance fields
.field protected final _abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

.field protected final _additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected final _modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-array v0, v1, [Lorg/codehaus/jackson/map/KeyDeserializers;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 45
    new-array v0, v1, [Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 46
    new-array v0, v1, [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 85
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 0
    .param p1, "allAdditionalDeserializers"    # [Lorg/codehaus/jackson/map/Deserializers;
    .param p2, "allAdditionalKeyDeserializers"    # [Lorg/codehaus/jackson/map/KeyDeserializers;
    .param p3, "modifiers"    # [Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    .param p4, "atr"    # [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;-><init>()V

    .line 96
    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->access$000()[Lorg/codehaus/jackson/map/Deserializers;

    move-result-object p1

    .end local p1    # "allAdditionalDeserializers":[Lorg/codehaus/jackson/map/Deserializers;
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    .line 98
    if-nez p2, :cond_1

    sget-object p2, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .end local p2    # "allAdditionalKeyDeserializers":[Lorg/codehaus/jackson/map/KeyDeserializers;
    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 100
    if-nez p3, :cond_2

    sget-object p3, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .end local p3    # "modifiers":[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_2
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 101
    if-nez p4, :cond_3

    sget-object p4, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .end local p4    # "atr":[Lorg/codehaus/jackson/map/AbstractTypeResolver;
    :cond_3
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 102
    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializers()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 5
    .param p1, "resolver"    # Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null resolver"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 141
    .local v0, "all":[Lorg/codehaus/jackson/map/AbstractTypeResolver;
    new-instance v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    return-object v1
.end method

.method public withAdditionalDeserializers(Lorg/codehaus/jackson/map/Deserializers;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 5
    .param p1, "additional"    # Lorg/codehaus/jackson/map/Deserializers;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Deserializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/Deserializers;

    .line 111
    .local v0, "all":[Lorg/codehaus/jackson/map/Deserializers;
    new-instance v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    return-object v1
.end method

.method public withAdditionalKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 5
    .param p1, "additional"    # Lorg/codehaus/jackson/map/KeyDeserializers;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null KeyDeserializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 121
    .local v0, "all":[Lorg/codehaus/jackson/map/KeyDeserializers;
    new-instance v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    return-object v1
.end method

.method public withDeserializerModifier(Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 5
    .param p1, "modifier"    # Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null modifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 131
    .local v0, "all":[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    new-instance v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    return-object v1
.end method
