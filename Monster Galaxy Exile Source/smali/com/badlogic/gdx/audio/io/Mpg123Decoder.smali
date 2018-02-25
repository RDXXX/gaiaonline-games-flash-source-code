.class public Lcom/badlogic/gdx/audio/io/Mpg123Decoder;
.super Ljava/lang/Object;
.source "Mpg123Decoder.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/io/Decoder;


# instance fields
.field public final handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->openFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    .line 33
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
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
    .line 82
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->closeFile(J)V

    .line 83
    return-void
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->getLength(J)F

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->getNumChannels(J)I

    move-result v0

    return v0
.end method

.method public getRate()I
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->getRate(J)I

    move-result v0

    return v0
.end method

.method public readSamples(Ljava/nio/ShortBuffer;)I
    .locals 4
    .param p1, "samples"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 39
    iget-wide v1, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->readSamples(JLjava/nio/ShortBuffer;I)I

    move-result v0

    .line 40
    .local v0, "read":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    return v0
.end method

.method public skipSamples(I)I
    .locals 2
    .param p1, "numSamples"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/audio/io/Mpg123Decoder;->skipSamples(JI)I

    move-result v0

    return v0
.end method
