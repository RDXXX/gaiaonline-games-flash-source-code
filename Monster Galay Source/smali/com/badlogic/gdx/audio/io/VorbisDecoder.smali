.class public Lcom/badlogic/gdx/audio/io/VorbisDecoder;
.super Ljava/lang/Object;
.source "VorbisDecoder.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/io/Decoder;


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->openFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    .line 32
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t open file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method private native closeFile(J)V
.end method

.method private native getLength(J)F
.end method

.method private native getNumChannels(J)I
.end method

.method private native getRate(J)I
.end method

.method private native openFile(Ljava/lang/String;)J
.end method

.method private native readSamples(JLjava/nio/ShortBuffer;I)I
.end method

.method private native skipSamples(JI)I
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->closeFile(J)V

    .line 39
    return-void
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->getLength(J)F

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->getNumChannels(J)I

    move-result v0

    return v0
.end method

.method public getRate()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->getRate(J)I

    move-result v0

    return v0
.end method

.method public readSamples(Ljava/nio/ShortBuffer;)I
    .locals 4
    .param p1, "samples"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 62
    iget-wide v1, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->readSamples(JLjava/nio/ShortBuffer;I)I

    move-result v0

    .line 63
    .local v0, "read":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    return v0
.end method

.method public skipSamples(I)I
    .locals 2
    .param p1, "numSamples"    # I

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/audio/io/VorbisDecoder;->skipSamples(JI)I

    move-result v0

    return v0
.end method
