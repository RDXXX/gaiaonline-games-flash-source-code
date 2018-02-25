.class public Lcom/badlogic/gdx/audio/analysis/FFT;
.super Lcom/badlogic/gdx/audio/analysis/FourierTransform;
.source "FFT.java"


# instance fields
.field private coslookup:[F

.field private reverse:[I

.field private sinlookup:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "timeSize"    # I
    .param p2, "sampleRate"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;-><init>(IF)V

    .line 35
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FFT: timeSize must be a power of two."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->buildReverseTable()V

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->buildTrigTables()V

    .line 38
    return-void
.end method

.method private bitReverseComplex()V
    .locals 5

    .prologue
    .line 181
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v3, v3

    new-array v2, v3, [F

    .line 182
    .local v2, "revReal":[F
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    array-length v3, v3

    new-array v1, v3, [F

    .line 183
    .local v1, "revImag":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    aget v4, v4, v0

    aget v3, v3, v4

    aput v3, v2, v0

    .line 185
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    aget v4, v4, v0

    aget v3, v3, v4

    aput v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iput-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    .line 188
    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    .line 189
    return-void
.end method

.method private bitReverseSamples([F)V
    .locals 3
    .param p1, "samples"    # [F

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private buildReverseTable()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 160
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    .line 161
    .local v0, "N":I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    .line 164
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    aput v5, v4, v5

    .line 165
    const/4 v3, 0x1

    .local v3, "limit":I
    div-int/lit8 v1, v0, 0x2

    .local v1, "bit":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 167
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    add-int v5, v2, v3

    iget-object v6, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->reverse:[I

    aget v6, v6, v2

    add-int/2addr v6, v1

    aput v6, v4, v5

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_0
    shl-int/lit8 v3, v3, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private buildTrigTables()V
    .locals 6

    .prologue
    const v5, -0x3fb6f025

    .line 205
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    .line 206
    .local v0, "N":I
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->sinlookup:[F

    .line 207
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->coslookup:[F

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->sinlookup:[F

    int-to-float v3, v1

    div-float v3, v5, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 210
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->coslookup:[F

    int-to-float v3, v1

    div-float v3, v5, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private cos(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->coslookup:[F

    aget v0, v0, p1

    return v0
.end method

.method private fft()V
    .locals 13

    .prologue
    .line 86
    const/4 v3, 0x1

    .local v3, "halfSize":I
    :goto_0
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v11, v11

    if-ge v3, v11, :cond_2

    .line 92
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/audio/analysis/FFT;->cos(I)F

    move-result v7

    .line 93
    .local v7, "phaseShiftStepR":F
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/audio/analysis/FFT;->sin(I)F

    move-result v6

    .line 95
    .local v6, "phaseShiftStepI":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    .local v1, "currentPhaseShiftR":F
    const/4 v0, 0x0

    .line 97
    .local v0, "currentPhaseShiftI":F
    const/4 v2, 0x0

    .local v2, "fftStep":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 98
    move v4, v2

    .local v4, "i":I
    :goto_2
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v11, v11

    if-ge v4, v11, :cond_0

    .line 99
    add-int v5, v4, v3

    .line 100
    .local v5, "off":I
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v11, v11, v5

    mul-float/2addr v11, v1

    iget-object v12, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v12, v12, v5

    mul-float/2addr v12, v0

    sub-float v10, v11, v12

    .line 101
    .local v10, "tr":F
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v11, v11, v5

    mul-float/2addr v11, v1

    iget-object v12, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v12, v12, v5

    mul-float/2addr v12, v0

    add-float v8, v11, v12

    .line 102
    .local v8, "ti":F
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    iget-object v12, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v12, v12, v4

    sub-float/2addr v12, v10

    aput v12, v11, v5

    .line 103
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    iget-object v12, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v12, v12, v4

    sub-float/2addr v12, v8

    aput v12, v11, v5

    .line 104
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v12, v11, v4

    add-float/2addr v12, v10

    aput v12, v11, v4

    .line 105
    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v12, v11, v4

    add-float/2addr v12, v8

    aput v12, v11, v4

    .line 98
    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v4, v11

    goto :goto_2

    .line 107
    .end local v5    # "off":I
    .end local v8    # "ti":F
    .end local v10    # "tr":F
    :cond_0
    move v9, v1

    .line 108
    .local v9, "tmpR":F
    mul-float v11, v9, v7

    mul-float v12, v0, v6

    sub-float v1, v11, v12

    .line 109
    mul-float v11, v9, v6

    mul-float v12, v0, v7

    add-float v0, v11, v12

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v4    # "i":I
    .end local v9    # "tmpR":F
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 112
    .end local v0    # "currentPhaseShiftI":F
    .end local v1    # "currentPhaseShiftR":F
    .end local v2    # "fftStep":I
    .end local v6    # "phaseShiftStepI":F
    .end local v7    # "phaseShiftStepR":F
    :cond_2
    return-void
.end method

.method private sin(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->sinlookup:[F

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method protected allocateArrays()V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    .line 43
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    .line 44
    return-void
.end method

.method public forward([F)V
    .locals 2
    .param p1, "buffer"    # [F

    .prologue
    .line 115
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    if-eq v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FFT.forward: The length of the passed sample buffer must be equal to timeSize()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FFT;->doWindow([F)V

    .line 120
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FFT;->bitReverseSamples([F)V

    .line 122
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->fft()V

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->fillSpectrum()V

    .line 125
    return-void
.end method

.method public forward([F[F)V
    .locals 2
    .param p1, "buffReal"    # [F
    .param p2, "buffImag"    # [F

    .prologue
    .line 132
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    if-ne v0, v1, :cond_0

    array-length v0, p2

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    if-eq v0, v1, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FFT.forward: The length of the passed buffers must be equal to timeSize()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FFT;->setComplex([F[F)V

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->bitReverseComplex()V

    .line 137
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->fft()V

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->fillSpectrum()V

    .line 139
    return-void
.end method

.method public inverse([F)V
    .locals 4
    .param p1, "buffer"    # [F

    .prologue
    .line 142
    array-length v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FFT.inverse: the passed array\'s length must equal FFT.timeSize()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v2, v1, v0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->bitReverseComplex()V

    .line 150
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->fft()V

    .line 152
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_2
    return-void
.end method

.method public scaleBand(IF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # F

    .prologue
    const/4 v1, 0x0

    .line 47
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t scale a frequency band by a negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v1, v0, p1

    mul-float/2addr v1, p2

    aput v1, v0, p1

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    if-eq p1, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v2, v2, p1

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v2, v2, p1

    neg-float v2, v2

    aput v2, v0, v1

    .line 61
    :cond_2
    return-void
.end method

.method public setBand(IF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "a"    # F

    .prologue
    const/4 v1, 0x0

    .line 64
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set a frequency band to a negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aput p2, v0, p1

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aput p2, v0, p1

    .line 77
    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    if-eq p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v2, v2, p1

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->timeSize:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v2, v2, p1

    neg-float v2, v2

    aput v2, v0, v1

    .line 81
    :cond_1
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aput p2, v0, p1

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->real:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->imag:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->spectrum:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    goto :goto_0
.end method
