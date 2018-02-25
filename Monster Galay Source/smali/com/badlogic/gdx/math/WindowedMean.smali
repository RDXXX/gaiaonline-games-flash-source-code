.class public final Lcom/badlogic/gdx/math/WindowedMean;
.super Ljava/lang/Object;
.source "WindowedMean.java"


# instance fields
.field added_values:I

.field dirty:Z

.field last_value:I

.field mean:F

.field values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "window_size"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 36
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    .line 37
    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 57
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aput p1, v0, v1

    .line 59
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 60
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 61
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 47
    iput v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 51
    return-void
.end method

.method public getLatest()F
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    aget v0, v1, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMean()F
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-boolean v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "mean":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iput v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 76
    .end local v0    # "i":I
    .end local v1    # "mean":F
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 78
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getOldest()F
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasEnoughData()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public standardDeviation()F
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 101
    :goto_0
    return v3

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v1

    .line 96
    .local v1, "mean":F
    const/4 v2, 0x0

    .line 97
    .local v2, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v3, v3, v0

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v4, v4, v0

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v3

    int-to-float v3, v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_0
.end method
