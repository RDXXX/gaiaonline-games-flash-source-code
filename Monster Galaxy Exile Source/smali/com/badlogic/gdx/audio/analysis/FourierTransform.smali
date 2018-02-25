.class public abstract Lcom/badlogic/gdx/audio/analysis/FourierTransform;
.super Ljava/lang/Object;
.source "FourierTransform.java"


# static fields
.field public static final HAMMING:I = 0x1

.field protected static final LINAVG:I = 0x2

.field protected static final LOGAVG:I = 0x3

.field protected static final NOAVG:I = 0x4

.field public static final NONE:I = 0x0

.field protected static final TWO_PI:F = 6.2831855f


# instance fields
.field protected averages:[F

.field protected avgPerOctave:I

.field protected bandWidth:F

.field protected imag:[F

.field protected octaves:I

.field protected real:[F

.field protected sampleRate:I

.field protected spectrum:[F

.field protected timeSize:I

.field protected whichAverage:I

.field protected whichWindow:I


# direct methods
.method constructor <init>(IF)V
    .locals 3
    .param p1, "ts"    # I
    .param p2, "sr"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    .line 122
    float-to-int v0, p2

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    .line 123
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->bandWidth:F

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->noAverages()V

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->allocateArrays()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichWindow:I

    .line 127
    return-void
.end method


# virtual methods
.method protected abstract allocateArrays()V
.end method

.method public avgSize()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    array-length v0, v0

    return v0
.end method

.method public calcAvg(FF)F
    .locals 5
    .param p1, "lowFreq"    # F
    .param p2, "hiFreq"    # F

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v3

    .line 423
    .local v3, "lowBound":I
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v1

    .line 424
    .local v1, "hiBound":I
    const/4 v0, 0x0

    .line 425
    .local v0, "avg":F
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 426
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    aget v4, v4, v2

    add-float/2addr v0, v4

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_0
    sub-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 429
    return v0
.end method

.method protected doWindow([F)V
    .locals 1
    .param p1, "samples"    # [F

    .prologue
    .line 240
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichWindow:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->hamming([F)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected fillSpectrum()V
    .locals 15

    .prologue
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 148
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v9, v9

    if-ge v5, v9, :cond_0

    .line 149
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    iget-object v10, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->real:[F

    aget v10, v10, v5

    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->real:[F

    aget v11, v11, v5

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->imag:[F

    aget v11, v11, v5

    iget-object v12, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->imag:[F

    aget v12, v12, v5

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v9, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 153
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v9, v9

    iget-object v10, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    array-length v10, v10

    div-int v1, v9, v10

    .line 154
    .local v1, "avgWidth":I
    const/4 v5, 0x0

    :goto_1
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    array-length v9, v9

    if-ge v5, v9, :cond_5

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "avg":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_1

    .line 158
    mul-int v9, v5, v1

    add-int v8, v6, v9

    .line 159
    .local v8, "offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 160
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    aget v9, v9, v8

    add-float/2addr v0, v9

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 165
    .end local v8    # "offset":I
    :cond_1
    add-int/lit8 v9, v6, 0x1

    int-to-float v9, v9

    div-float/2addr v0, v9

    .line 166
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    aput v0, v9, v5

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "avg":F
    .end local v1    # "avgWidth":I
    .end local v6    # "j":I
    :cond_2
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 169
    const/4 v5, 0x0

    :goto_3
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    if-ge v5, v9, :cond_5

    .line 171
    if-nez v5, :cond_3

    .line 172
    const/4 v7, 0x0

    .line 176
    .local v7, "lowFreq":F
    :goto_4
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    sub-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    div-float v4, v9, v10

    .line 177
    .local v4, "hiFreq":F
    sub-float v9, v4, v7

    iget v10, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 178
    .local v3, "freqStep":F
    move v2, v7

    .line 179
    .local v2, "f":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    if-ge v6, v9, :cond_4

    .line 180
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    mul-int/2addr v9, v5

    add-int v8, v6, v9

    .line 181
    .restart local v8    # "offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    add-float v10, v2, v3

    invoke-virtual {p0, v2, v10}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->calcAvg(FF)F

    move-result v10

    aput v10, v9, v8

    .line 182
    add-float/2addr v2, v3

    .line 179
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 174
    .end local v2    # "f":F
    .end local v3    # "freqStep":F
    .end local v4    # "hiFreq":F
    .end local v6    # "j":I
    .end local v7    # "lowFreq":F
    .end local v8    # "offset":I
    :cond_3
    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    sub-int/2addr v10, v5

    int-to-double v10, v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    div-float v7, v9, v10

    .restart local v7    # "lowFreq":F
    goto :goto_4

    .line 169
    .restart local v2    # "f":F
    .restart local v3    # "freqStep":F
    .restart local v4    # "hiFreq":F
    .restart local v6    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 186
    .end local v2    # "f":F
    .end local v3    # "freqStep":F
    .end local v4    # "hiFreq":F
    .end local v6    # "j":I
    .end local v7    # "lowFreq":F
    :cond_5
    return-void
.end method

.method public abstract forward([F)V
.end method

.method public forward([FI)V
    .locals 4
    .param p1, "buffer"    # [F
    .param p2, "startAt"    # I

    .prologue
    .line 443
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    if-ge v1, v2, :cond_0

    .line 444
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FourierTransform.forward: not enough samples in the buffer between "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to perform a transform."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    new-array v0, v1, [F

    .line 450
    .local v0, "section":[F
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->forward([F)V

    .line 452
    return-void
.end method

.method public freqToIndex(F)I
    .locals 5
    .param p1, "freq"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 307
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v2

    div-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v1, 0x0

    .line 313
    :goto_0
    return v1

    .line 309
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 311
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    int-to-float v2, v2

    div-float v0, p1, v2

    .line 312
    .local v0, "fraction":F
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 313
    .local v1, "i":I
    goto :goto_0
.end method

.method public getAverageCenterFrequency(I)F
    .locals 13
    .param p1, "i"    # I

    .prologue
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 340
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 342
    iget-object v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v8, v8

    iget-object v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    array-length v9, v9

    div-int v0, v8, v9

    .line 344
    .local v0, "avgWidth":I
    mul-int v8, p1, v0

    div-int/lit8 v9, v0, 0x2

    add-int v1, v8, v9

    .line 345
    .local v1, "centerBinIndex":I
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->indexToFreq(I)F

    move-result v8

    .line 369
    .end local v0    # "avgWidth":I
    .end local v1    # "centerBinIndex":I
    :goto_0
    return v8

    .line 347
    :cond_0
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 349
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    div-int v6, p1, v8

    .line 351
    .local v6, "octave":I
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    rem-int v7, p1, v8

    .line 354
    .local v7, "offset":I
    if-nez v6, :cond_1

    .line 355
    const/4 v5, 0x0

    .line 360
    .local v5, "lowFreq":F
    :goto_1
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    div-float v4, v8, v9

    .line 362
    .local v4, "hiFreq":F
    sub-float v8, v4, v5

    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 364
    .local v3, "freqStep":F
    int-to-float v8, v7

    mul-float/2addr v8, v3

    add-float v2, v5, v8

    .line 366
    .local v2, "f":F
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    add-float/2addr v8, v2

    goto :goto_0

    .line 357
    .end local v2    # "f":F
    .end local v3    # "freqStep":F
    .end local v4    # "hiFreq":F
    .end local v5    # "lowFreq":F
    :cond_1
    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    sub-int/2addr v9, v6

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    div-float v5, v8, v9

    .restart local v5    # "lowFreq":F
    goto :goto_1

    .line 369
    .end local v5    # "lowFreq":F
    .end local v6    # "octave":I
    .end local v7    # "offset":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getAvg(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    aget v0, v1, p1

    .line 413
    .local v0, "ret":F
    :goto_0
    return v0

    .line 412
    .end local v0    # "ret":F
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":F
    goto :goto_0
.end method

.method public getBand(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 274
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    aget v0, v0, p1

    return v0
.end method

.method public getBandWidth()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->bandWidth:F

    return v0
.end method

.method public getFreq(F)F
    .locals 1
    .param p1, "freq"    # F

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBand(I)F

    move-result v0

    return v0
.end method

.method public getImaginaryPart()[F
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->imag:[F

    return-object v0
.end method

.method public getRealPart()[F
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->real:[F

    return-object v0
.end method

.method public getSpectrum()[F
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    return-object v0
.end method

.method protected hamming([F)V
    .locals 9
    .param p1, "samples"    # [F

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 250
    aget v1, p1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fe147ae20000000L    # 0.5400000214576721

    const-wide v5, 0x3fdd70a3e0000000L    # 0.46000000834465027

    const v7, 0x40c90fdb

    int-to-float v8, v0

    mul-float/2addr v7, v8

    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public indexToFreq(I)F
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/high16 v5, 0x3e800000    # 0.25f

    .line 319
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v1

    .line 322
    .local v1, "bw":F
    if-nez p1, :cond_0

    mul-float v3, v1, v5

    .line 333
    :goto_0
    return v3

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 325
    iget v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float v2, v3, v4

    .line 326
    .local v2, "lastBinBeginFreq":F
    mul-float v0, v1, v5

    .line 327
    .local v0, "binHalfWidth":F
    add-float v3, v2, v0

    goto :goto_0

    .line 333
    .end local v0    # "binHalfWidth":F
    .end local v2    # "lastBinBeginFreq":F
    :cond_1
    int-to-float v3, p1

    mul-float/2addr v3, v1

    goto :goto_0
.end method

.method public abstract inverse([F)V
.end method

.method public inverse([F[F[F)V
    .locals 0
    .param p1, "freqReal"    # [F
    .param p2, "freqImag"    # [F
    .param p3, "buffer"    # [F

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->setComplex([F[F)V

    .line 467
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->inverse([F)V

    .line 468
    return-void
.end method

.method public linAverages(I)V
    .locals 3
    .param p1, "numAvg"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of averages for this transform can be at most "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    .line 206
    return-void
.end method

.method public logAverages(II)V
    .locals 3
    .param p1, "minBandwidth"    # I
    .param p2, "bandsPerOctave"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 217
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->sampleRate:I

    int-to-float v1, v1

    div-float v0, v1, v2

    .line 218
    .local v0, "nyq":F
    const/4 v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    .line 219
    :goto_0
    div-float/2addr v0, v2

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 220
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    goto :goto_0

    .line 222
    :cond_0
    iput p2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->avgPerOctave:I

    .line 223
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->octaves:I

    mul-int/2addr v1, p2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    .line 224
    const/4 v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    .line 225
    return-void
.end method

.method public noAverages()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->averages:[F

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichAverage:I

    .line 192
    return-void
.end method

.method public abstract scaleBand(IF)V
.end method

.method public scaleFreq(FF)V
    .locals 1
    .param p1, "freq"    # F
    .param p2, "s"    # F

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->scaleBand(IF)V

    .line 394
    return-void
.end method

.method public abstract setBand(IF)V
.end method

.method protected setComplex([F[F)V
    .locals 3
    .param p1, "r"    # [F
    .param p2, "i"    # [F

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->real:[F

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->imag:[F

    array-length v0, v0

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This won\'t work"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->real:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->imag:[F

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public setFreq(FF)V
    .locals 1
    .param p1, "freq"    # F
    .param p2, "a"    # F

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->setBand(IF)V

    .line 386
    return-void
.end method

.method public specSize()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->spectrum:[F

    array-length v0, v0

    return v0
.end method

.method public timeSize()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->timeSize:I

    return v0
.end method

.method public window(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 232
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid window type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->whichWindow:I

    .line 237
    return-void
.end method
