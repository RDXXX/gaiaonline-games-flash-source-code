.class public interface abstract Lorg/codehaus/jackson/impl/Indenter;
.super Ljava/lang/Object;
.source "Indenter.java"


# virtual methods
.method public abstract isInline()Z
.end method

.method public abstract writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
