.class public interface abstract Lorg/codehaus/jackson/map/JsonSerializableWithType;
.super Ljava/lang/Object;
.source "JsonSerializableWithType.java"

# interfaces
.implements Lorg/codehaus/jackson/map/JsonSerializable;


# virtual methods
.method public abstract serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
