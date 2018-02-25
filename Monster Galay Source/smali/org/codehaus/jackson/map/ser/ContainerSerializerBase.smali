.class public abstract Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "ContainerSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;, "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;, "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation
.end method

.method public withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 0
    .param p1, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;, "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase<TT;>;"
    if-nez p1, :cond_0

    .line 47
    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;, "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;, "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;->_withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object p0

    goto :goto_0
.end method
