.class public Lcom/badlogic/gdx/audio/analysis/NativeFFT;
.super Ljava/lang/Object;
.source "NativeFFT.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "timeSize"    # I
    .param p2, "sampleRate"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->createFFT(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->handle:J

    .line 32
    return-void
.end method

.method private native createFFT(II)J
.end method

.method private native destroyFFT(J)V
.end method

.method private native nativeSpectrum(JLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->destroyFFT(J)V

    .line 46
    return-void
.end method

.method public spectrum(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
    .locals 6
    .param p1, "samples"    # Ljava/nio/FloatBuffer;
    .param p2, "spectrum"    # Ljava/nio/FloatBuffer;
    .param p3, "numSamples"    # I

    .prologue
    .line 41
    iget-wide v1, p0, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->handle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/audio/analysis/NativeFFT;->nativeSpectrum(JLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V

    .line 42
    return-void
.end method
