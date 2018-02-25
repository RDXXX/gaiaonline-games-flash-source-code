.class public Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;
.super Lcom/badlogic/gdx/graphics/Mesh;
.source "PieMesh.java"


# instance fields
.field numPieces:I

.field private pieceEndRanges:[F

.field private pieceEndVertices:[F

.field private radius:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    const/4 v0, 0x7

    const/16 v1, 0x8

    new-array v2, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_position"

    invoke-direct {v3, v5, v8, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v5

    .line 20
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_texCoord"

    invoke-direct {v3, v8, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v6

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 11
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 14
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 16
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    .line 21
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->x:F

    .line 22
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->y:F

    .line 23
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    .line 24
    return-void

    .line 13
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 15
    :array_1
    .array-data 4
        0x3e000000    # 0.125f
        0x3ec00000    # 0.375f
        0x3f200000    # 0.625f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLastVertex(IF)[F
    .locals 12
    .param p1, "vertexIndex"    # I
    .param p2, "completionRate"    # F

    .prologue
    .line 112
    if-nez p1, :cond_0

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    array-length v10, v10

    add-int/lit8 v4, v10, -0x1

    .line 114
    .local v4, "prevIndex":I
    :goto_0
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    aget v0, v10, p1

    .line 115
    .local v0, "endRange":F
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 116
    .local v5, "startRange":F
    :goto_1
    sub-float v10, p2, v5

    .line 117
    sub-float v11, v0, v5

    .line 116
    div-float v3, v10, v11

    .line 121
    .local v3, "pieceCompletionRate":F
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v11, p1, 0x2

    aget v1, v10, v11

    .line 122
    .local v1, "endX":F
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v11, p1, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v2, v10, v11

    .line 123
    .local v2, "endY":F
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v11, v4, 0x2

    aget v6, v10, v11

    .line 124
    .local v6, "startX":F
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v7, v10, v11

    .line 125
    .local v7, "startY":F
    sub-float v10, v1, v6

    mul-float/2addr v10, v3

    add-float v8, v6, v10

    .line 126
    .local v8, "vertexX":F
    sub-float v10, v2, v7

    mul-float/2addr v10, v3

    add-float v9, v7, v10

    .line 127
    .local v9, "vertexY":F
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    return-object v10

    .line 113
    .end local v0    # "endRange":F
    .end local v1    # "endX":F
    .end local v2    # "endY":F
    .end local v3    # "pieceCompletionRate":F
    .end local v4    # "prevIndex":I
    .end local v5    # "startRange":F
    .end local v6    # "startX":F
    .end local v7    # "startY":F
    .end local v8    # "vertexX":F
    .end local v9    # "vertexY":F
    :cond_0
    add-int/lit8 v4, p1, -0x1

    goto :goto_0

    .line 115
    .restart local v0    # "endRange":F
    .restart local v4    # "prevIndex":I
    :cond_1
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    aget v5, v10, v4

    goto :goto_1
.end method

.method private getNumPieces(F)I
    .locals 2
    .param p1, "completionRate"    # F

    .prologue
    .line 139
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    array-length v1, v1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 144
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public render(I)V
    .locals 1
    .param p1, "primitiveType"    # I

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->render(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public setCompletionRate(F)V
    .locals 10
    .param p1, "completionRate"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->getNumPieces(F)I

    move-result v6

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    .line 38
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    if-nez v6, :cond_0

    .line 40
    const/4 v6, 0x0

    new-array v6, v6, [F

    invoke-virtual {p0, v6}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setVertices([F)V

    .line 41
    const/4 v6, 0x0

    new-array v6, v6, [S

    invoke-virtual {p0, v6}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setIndices([S)V

    .line 99
    :goto_0
    return-void

    .line 45
    :cond_0
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x5

    new-array v3, v6, [F

    .line 48
    .local v3, "vertices":[F
    const/4 v6, 0x0

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->x:F

    aput v7, v3, v6

    .line 49
    const/4 v6, 0x1

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->y:F

    aput v7, v3, v6

    .line 50
    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v3, v6

    .line 51
    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v3, v6

    .line 52
    const/4 v6, 0x4

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v3, v6

    .line 55
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    aget v4, v6, v7

    .line 56
    .local v4, "zeroVertexX":F
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndRanges:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v5, v6, v7

    .line 57
    .local v5, "zeroVertexY":F
    const/4 v6, 0x5

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->x:F

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 58
    const/4 v6, 0x6

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->y:F

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 59
    const/4 v6, 0x7

    const/4 v7, 0x0

    aput v7, v3, v6

    .line 60
    const/16 v6, 0x8

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v4

    aput v7, v3, v6

    .line 61
    const/16 v6, 0x9

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v5

    aput v7, v3, v6

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_1

    .line 74
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v6, p1}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->getLastVertex(IF)[F

    move-result-object v2

    .line 75
    .local v2, "lastVertex":[F
    const/16 v6, 0xa

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->x:F

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    const/4 v9, 0x0

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 76
    const/16 v6, 0xb

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->y:F

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    const/4 v9, 0x1

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 77
    const/16 v6, 0xc

    const/4 v7, 0x0

    aput v7, v3, v6

    .line 78
    const/16 v6, 0xd

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    aget v8, v2, v8

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 79
    const/16 v6, 0xe

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    aget v8, v2, v8

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 81
    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setVertices([F)V

    .line 83
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->numPieces:I

    add-int/lit8 v6, v6, 0x2

    new-array v1, v6, [S

    .line 86
    .local v1, "indices":[S
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-short v7, v1, v6

    .line 89
    const/4 v6, 0x1

    const/4 v7, 0x1

    aput-short v7, v1, v6

    .line 92
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x2

    aput-short v7, v1, v6

    .line 95
    const/4 v0, 0x2

    :goto_2
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_2

    .line 98
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setIndices([S)V

    goto/16 :goto_0

    .line 65
    .end local v1    # "indices":[S
    .end local v2    # "lastVertex":[F
    :cond_1
    add-int/lit8 v6, v0, 0x3

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->x:F

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v9, v0, 0x2

    aget v8, v8, v9

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 66
    add-int/lit8 v6, v0, 0x3

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->y:F

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    .line 67
    iget v9, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->radius:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 66
    aput v7, v3, v6

    .line 68
    add-int/lit8 v6, v0, 0x3

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    aput v7, v3, v6

    .line 69
    add-int/lit8 v6, v0, 0x3

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 70
    add-int/lit8 v6, v0, 0x3

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x4

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->pieceEndVertices:[F

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 96
    .restart local v1    # "indices":[S
    .restart local v2    # "lastVertex":[F
    :cond_2
    add-int/lit8 v6, v0, 0x1

    int-to-short v6, v6

    aput-short v6, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
