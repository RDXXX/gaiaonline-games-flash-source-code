.class public interface abstract Lcom/badlogic/gdx/audio/io/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getLength()F
.end method

.method public abstract getNumChannels()I
.end method

.method public abstract getRate()I
.end method

.method public abstract readSamples(Ljava/nio/ShortBuffer;)I
.end method

.method public abstract skipSamples(I)I
.end method
