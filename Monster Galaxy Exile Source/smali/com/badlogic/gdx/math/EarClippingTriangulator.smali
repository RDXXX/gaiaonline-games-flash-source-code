.class public final Lcom/badlogic/gdx/math/EarClippingTriangulator;
.super Ljava/lang/Object;
.source "EarClippingTriangulator.java"


# static fields
.field private static final CONCAVE:I = 0x1

.field private static final CONVEX:I = -0x1


# instance fields
.field private concaveVertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areVerticesClockwise(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 80
    .local v4, "vertexCount":I
    const/4 v0, 0x0

    .line 81
    .local v0, "area":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    .line 83
    .local v2, "p1":Lcom/badlogic/gdx/math/Vector2;
    invoke-static {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    .line 84
    .local v3, "p2":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v5, v6

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "p1":Lcom/badlogic/gdx/math/Vector2;
    .end local v3    # "p2":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 88
    const/4 v5, 0x1

    .line 90
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private classifyVertices(Ljava/util/ArrayList;)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 100
    .local v12, "vertexCount":I
    new-array v13, v12, [I

    .line 101
    .local v13, "vertexTypes":[I
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    .line 104
    invoke-static {p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->areVerticesClockwise(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 108
    :cond_0
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    if-ge v7, v12, :cond_2

    .line 109
    invoke-static {p1, v7}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v10

    .line 110
    .local v10, "previousIndex":I
    invoke-static {p1, v7}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v8

    .line 112
    .local v8, "nextIndex":I
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/math/Vector2;

    .line 113
    .local v11, "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    .local v6, "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    .line 116
    .local v9, "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    iget v0, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isTriangleConvex(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, -0x1

    aput v0, v13, v7

    .line 108
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x1

    aput v0, v13, v7

    .line 121
    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    goto :goto_1

    .line 125
    .end local v6    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v8    # "nextIndex":I
    .end local v9    # "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v10    # "previousIndex":I
    .end local v11    # "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    :cond_2
    return-object v13
.end method

.method private static computeNextIndex(Ljava/util/List;I)I
    .locals 1
    .param p1, "pIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "pVertices":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private static computePreviousIndex(Ljava/util/List;I)I
    .locals 1
    .param p1, "pIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "pVertices":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private static computeSpannedAreaSign(FFFFFF)I
    .locals 6
    .param p0, "pX1"    # F
    .param p1, "pY1"    # F
    .param p2, "pX2"    # F
    .param p3, "pY2"    # F
    .param p4, "pX3"    # F
    .param p5, "pY3"    # F

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "area":D
    float-to-double v2, p0

    sub-float v4, p5, p3

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 146
    float-to-double v2, p2

    sub-float v4, p1, p5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 147
    float-to-double v2, p4

    sub-float v4, p3, p1

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private cutEarTip(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 4
    .param p2, "pEarTipIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    .local p3, "pTriangles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v1

    .line 202
    .local v1, "previousIndex":I
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v0

    .line 204
    .local v0, "nextIndex":I
    invoke-static {p1, v1, p2, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 212
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->removeCollinearNeighborEarsAfterRemovingEarTip(Ljava/util/ArrayList;I)V

    .line 214
    :cond_1
    return-void
.end method

.method private static isAnyVertexInTriangle(Ljava/util/ArrayList;[IFFFFFF)Z
    .locals 12
    .param p1, "pVertexTypes"    # [I
    .param p2, "pX1"    # F
    .param p3, "pY1"    # F
    .param p4, "pX2"    # F
    .param p5, "pY2"    # F
    .param p6, "pX3"    # F
    .param p7, "pY3"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;[IFFFFFF)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v10, 0x0

    .line 157
    .local v10, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 158
    .local v11, "vertexCount":I
    :goto_0
    add-int/lit8 v0, v11, -0x1

    if-ge v10, v0, :cond_2

    .line 159
    aget v0, p1, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    .line 162
    .local v9, "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    iget v4, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 163
    .local v4, "currentVertexX":F
    iget v5, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v5, "currentVertexY":F
    move v0, p2

    move v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v6

    .local v6, "areaSign1":I
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 167
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v7

    .local v7, "areaSign2":I
    move/from16 v0, p6

    move/from16 v1, p7

    move v2, p2

    move v3, p3

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v8

    .line 172
    .local v8, "areaSign3":I
    if-lez v6, :cond_0

    if-lez v7, :cond_0

    if-lez v8, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 180
    .end local v4    # "currentVertexX":F
    .end local v5    # "currentVertexY":F
    .end local v6    # "areaSign1":I
    .end local v7    # "areaSign2":I
    .end local v8    # "areaSign3":I
    .end local v9    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    :goto_1
    return v0

    .line 174
    .restart local v4    # "currentVertexX":F
    .restart local v5    # "currentVertexY":F
    .restart local v6    # "areaSign1":I
    .restart local v7    # "areaSign2":I
    .restart local v8    # "areaSign3":I
    .restart local v9    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    if-gtz v6, :cond_1

    if-gtz v7, :cond_1

    if-gtz v8, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_1

    .line 178
    .end local v4    # "currentVertexX":F
    .end local v5    # "currentVertexY":F
    .end local v6    # "areaSign1":I
    .end local v7    # "areaSign2":I
    .end local v8    # "areaSign3":I
    .end local v9    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isCollinear(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p1, "pIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v1

    .line 238
    .local v1, "previousIndex":I
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v0

    .line 240
    .local v0, "nextIndex":I
    invoke-static {p0, v1, p1, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;III)Z

    move-result v2

    return v2
.end method

.method private static isCollinear(Ljava/util/ArrayList;III)Z
    .locals 9
    .param p1, "pPreviousIndex"    # I
    .param p2, "pIndex"    # I
    .param p3, "pNextIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    .line 246
    .local v7, "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    .line 247
    .local v8, "vertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    .line 249
    .local v6, "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    iget v0, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEarTip(Ljava/util/ArrayList;I[I)Z
    .locals 12
    .param p2, "pEarTipIndex"    # I
    .param p3, "pVertexTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I[I)Z"
        }
    .end annotation

    .prologue
    .local p1, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v11, 0x1

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    .line 186
    .local v10, "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    .line 187
    .local v8, "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    .line 189
    .local v9, "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    iget v2, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isAnyVertexInTriangle(Ljava/util/ArrayList;[IFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 196
    .end local v8    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v9    # "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v10    # "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    :goto_0
    return v0

    .restart local v8    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    .restart local v9    # "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    .restart local v10    # "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    move v0, v11

    .line 193
    goto :goto_0

    .end local v8    # "currentVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v9    # "nextVertex":Lcom/badlogic/gdx/math/Vector2;
    .end local v10    # "previousVertex":Lcom/badlogic/gdx/math/Vector2;
    :cond_1
    move v0, v11

    .line 196
    goto :goto_0
.end method

.method private static isTriangleConvex(FFFFFF)Z
    .locals 1
    .param p0, "pX1"    # F
    .param p1, "pY1"    # F
    .param p2, "pX2"    # F
    .param p3, "pY2"    # F
    .param p4, "pX3"    # F
    .param p5, "pY3"    # F

    .prologue
    .line 130
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    if-gez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeCollinearNeighborEarsAfterRemovingEarTip(Ljava/util/ArrayList;I)V
    .locals 4
    .param p1, "pEarTipCutIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "pVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v1, p1, v2

    .line 219
    .local v1, "collinearityCheckNextIndex":I
    invoke-static {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 221
    .local v0, "collinearCheckPreviousIndex":I
    invoke-static {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 226
    invoke-static {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 227
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public computeTriangles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v6, 0x3

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "triangles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v4, "vertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 55
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertices(Ljava/util/ArrayList;)[I

    move-result-object v3

    .line 57
    .local v3, "vertexTypes":[I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 58
    .local v2, "vertexCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 59
    invoke-direct {p0, v4, v0, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isEarTip(Ljava/util/ArrayList;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-direct {p0, v4, v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->cutEarTip(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "index":I
    .end local v2    # "vertexCount":I
    .end local v3    # "vertexTypes":[I
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 71
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_3
    return-object v1
.end method
