.class public abstract Lorg/codehaus/jackson/map/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/SerializerFactory$Config;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final createSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, v1}, Lorg/codehaus/jackson/map/SerializerFactory;->createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Lorg/codehaus/jackson/map/JsonMappingException;)V

    throw v1
.end method

.method public abstract createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final createTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 2
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, v1}, Lorg/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    :try_end_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;
.end method

.method public final withAdditionalKeySerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lorg/codehaus/jackson/map/Serializers;

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializerFactory;->getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalKeySerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializerFactory;->withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalSerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lorg/codehaus/jackson/map/Serializers;

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializerFactory;->getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalSerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializerFactory;->withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;
.end method

.method public final withSerializerModifier(Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "modifier"    # Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializerFactory;->getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->withSerializerModifier(Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)Lorg/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializerFactory;->withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method
