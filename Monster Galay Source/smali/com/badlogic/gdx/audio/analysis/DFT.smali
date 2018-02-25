.class public Lcom/badlogic/gdx/audio/analysis/DFT;
.super Lcom/badlogic/gdx/audio/analysis/FourierTransform;
.source "DFT.java"


# instance fields
.field private coslookup:[F

.field private sinlookup:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "timeSize"    # I
    .param p2, "sampleRate"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;-><init>(IF)V

    .line 34
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DFT: timeSize must be even."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/audio/analysis/DFT;->buildTrigTables()V

    .line 36
    return-void
.end method

.method private buildTrigTables()V
    .locals 6

    .prologue
    const v5, 0x40c90fdb

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->spectrum:[F

    array-length v2, v2

    iget v3, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    mul-int v0, v2, v3

    .line 95
    .local v0, "N":I
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->sinlookup:[F

    .line 96
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->coslookup:[F

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->sinlookup:[F

    int-to-float v3, v1

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 99
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->coslookup:[F

    int-to-float v3, v1

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private cos(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->coslookup:[F

    aget v0, v0, p1

    return v0
.end method

.method private sin(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->sinlookup:[F

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method protected allocateArrays()V
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->spectrum:[F

    .line 40
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    .line 41
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    .line 42
    return-void
.end method

.method public forward([F)V
    .locals 8
    .param p1, "samples"    # [F

    .prologue
    const/4 v7, 0x0

    .line 53
    array-length v3, p1

    iget v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->timeSize:I

    if-eq v3, v4, :cond_0

    .line 54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DFT.forward: The length of the passed sample buffer must be equal to DFT.timeSize()."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/DFT;->doWindow([F)V

    .line 58
    array-length v0, p1

    .line 59
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    div-int/lit8 v3, v0, 0x2

    if-gt v1, v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    aput v7, v3, v1

    .line 61
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aput v7, v3, v1

    .line 62
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    aget v4, v3, v1

    aget v5, p1, v2

    mul-int v6, v2, v1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/audio/analysis/DFT;->cos(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 64
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aget v4, v3, v1

    aget v5, p1, v2

    mul-int v6, v2, v1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/audio/analysis/DFT;->sin(I)F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "t":I
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/DFT;->fillSpectrum()V

    .line 68
    return-void
.end method

.method public inverse([F)V
    .locals 9
    .param p1, "buffer"    # [F

    .prologue
    const/4 v8, 0x0

    .line 71
    array-length v0, p1

    .line 72
    .local v0, "N":I
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    aget v5, v4, v8

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, v4, v8

    .line 73
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    iget-object v5, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aget v5, v5, v8

    neg-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v8

    .line 74
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    div-int/lit8 v5, v0, 0x2

    aget v6, v4, v5

    int-to-float v7, v0

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 75
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    div-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aget v6, v6, v8

    neg-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v4, v0, 0x2

    if-ge v2, v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    aget v5, v4, v2

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v2

    .line 78
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    iget-object v5, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aget v5, v5, v2

    neg-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 81
    const/4 v4, 0x0

    aput v4, p1, v3

    .line 82
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_2
    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_1

    .line 83
    aget v4, p1, v3

    iget-object v5, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->real:[F

    aget v5, v5, v1

    mul-int v6, v3, v1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/audio/analysis/DFT;->cos(I)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/audio/analysis/DFT;->imag:[F

    aget v6, v6, v1

    mul-int v7, v3, v1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/audio/analysis/DFT;->sin(I)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v3

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "f":I
    :cond_2
    return-void
.end method

.method public scaleBand(IF)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # F

    .prologue
    .line 46
    return-void
.end method

.method public setBand(IF)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "a"    # F

    .prologue
    .line 50
    return-void
.end method
