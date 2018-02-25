.class public abstract Lorg/codehaus/jackson/map/AbstractTypeResolver;
.super Ljava/lang/Object;
.source "AbstractTypeResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTypeMapping(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
