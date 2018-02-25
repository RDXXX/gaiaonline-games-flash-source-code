.class public Lcom/badlogic/gdx/audio/analysis/KissFFT;
.super Ljava/lang/Object;
.source "KissFFT.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "numSamples"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/audio/analysis/KissFFT;->create(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/KissFFT;->handle:J

    .line 35
    return-void
.end method

.method private native create(I)J
.end method

.method private native destroy(J)V
.end method

.method private native getImagPart(JLjava/nio/ShortBuffer;)V
.end method

.method private native getRealPart(JLjava/nio/ShortBuffer;)V
.end method

.method private native spectrum(JLjava/nio/ShortBuffer;Ljava/nio/FloatBuffer;)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/KissFFT;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/audio/analysis/KissFFT;->destroy(J)V

    .line 66
    return-void
.end method

.method public getImagPart(Ljava/nio/ShortBuffer;)V
    .locals 2
    .param p1, "imag"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/KissFFT;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/audio/analysis/KissFFT;->getImagPart(JLjava/nio/ShortBuffer;)V

    .line 74
    return-void
.end method

.method public getRealPart(Ljava/nio/ShortBuffer;)V
    .locals 2
    .param p1, "real"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/KissFFT;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/audio/analysis/KissFFT;->getRealPart(JLjava/nio/ShortBuffer;)V

    .line 70
    return-void
.end method

.method public spectrum(Ljava/nio/ShortBuffer;Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "samples"    # Ljava/nio/ShortBuffer;
    .param p2, "spectrum"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/badlogic/gdx/audio/analysis/KissFFT;->handle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/audio/analysis/KissFFT;->spectrum(JLjava/nio/ShortBuffer;Ljava/nio/FloatBuffer;)V

    .line 61
    return-void
.end method
