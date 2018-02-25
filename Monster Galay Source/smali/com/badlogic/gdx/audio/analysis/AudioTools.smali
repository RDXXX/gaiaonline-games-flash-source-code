.class public Lcom/badlogic/gdx/audio/analysis/AudioTools;
.super Ljava/lang/Object;
.source "AudioTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateFloatBuffer(II)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "numSamples"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 80
    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static allocateShortBuffer(II)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "numSamples"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 92
    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static native convertToFloat(Ljava/nio/ShortBuffer;Ljava/nio/FloatBuffer;I)V
.end method

.method public static native convertToMono(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
.end method

.method public static native convertToMono(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
.end method

.method public static native convertToShort(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;I)V
.end method

.method public static native spectralFlux(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)F
.end method
