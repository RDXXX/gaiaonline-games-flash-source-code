.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private final vertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 28
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 31
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    .line 33
    return-void
.end method


# virtual methods
.method public area()F
    .locals 10

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "area":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v3

    .line 123
    .local v3, "vertices":[F
    array-length v2, v3

    .line 126
    .local v2, "numFloats":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 127
    move v4, v1

    .line 128
    .local v4, "x1":I
    add-int/lit8 v6, v1, 0x1

    .line 129
    .local v6, "y1":I
    add-int/lit8 v8, v1, 0x2

    rem-int v5, v8, v2

    .line 130
    .local v5, "x2":I
    add-int/lit8 v8, v1, 0x3

    rem-int v7, v8, v2

    .line 132
    .local v7, "y2":I
    aget v8, v3, v4

    aget v9, v3, v7

    mul-float/2addr v8, v9

    add-float/2addr v0, v8

    .line 133
    aget v8, v3, v5

    aget v9, v3, v6

    mul-float/2addr v8, v9

    sub-float/2addr v0, v8

    .line 126
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 135
    .end local v4    # "x1":I
    .end local v5    # "x2":I
    .end local v6    # "y1":I
    .end local v7    # "y2":I
    :cond_0
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    .line 136
    return v0
.end method

.method public contains(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v3

    .line 166
    .local v3, "vertices":[F
    array-length v2, v3

    .line 167
    .local v2, "numFloats":I
    const/4 v1, 0x0

    .line 169
    .local v1, "intersects":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 170
    aget v4, v3, v0

    .line 171
    .local v4, "x1":F
    add-int/lit8 v9, v0, 0x1

    aget v6, v3, v9

    .line 172
    .local v6, "y1":F
    add-int/lit8 v9, v0, 0x2

    rem-int/2addr v9, v2

    aget v5, v3, v9

    .line 173
    .local v5, "x2":F
    add-int/lit8 v9, v0, 0x3

    rem-int/2addr v9, v2

    aget v7, v3, v9

    .line 174
    .local v7, "y2":F
    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v10, "Poly Test: "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Testing Point ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") against ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") and ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    cmpg-float v9, v6, p2

    if-gtz v9, :cond_0

    cmpg-float v9, p2, v7

    if-ltz v9, :cond_1

    :cond_0
    cmpg-float v9, v7, p2

    if-gtz v9, :cond_2

    cmpg-float v9, p2, v6

    if-gez v9, :cond_2

    :cond_1
    sub-float v9, v5, v4

    sub-float v10, v7, v6

    div-float/2addr v9, v10

    sub-float v10, p2, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 178
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    :cond_3
    and-int/lit8 v9, v1, 0x1

    if-ne v9, v8, :cond_4

    :goto_1
    return v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v6

    .line 143
    .local v6, "vertices":[F
    aget v3, v6, v7

    .line 144
    .local v3, "minX":F
    aget v4, v6, v8

    .line 145
    .local v4, "minY":F
    aget v1, v6, v7

    .line 146
    .local v1, "maxX":F
    aget v2, v6, v8

    .line 148
    .local v2, "maxY":F
    array-length v5, v6

    .line 149
    .local v5, "numFloats":I
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_4

    .line 150
    aget v7, v6, v0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_0

    aget v3, v6, v0

    .line 151
    :cond_0
    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    aget v4, v6, v7

    .line 152
    :cond_1
    aget v7, v6, v0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    aget v1, v6, v0

    .line 153
    :cond_2
    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    aget v2, v6, v7

    .line 149
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 156
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 157
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 158
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v8, v1, v3

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 159
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v8, v2, v4

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 161
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v7
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 36
    iget-boolean v9, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    if-nez v9, :cond_0

    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    .line 76
    :goto_0
    return-object v6

    .line 38
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    .line 39
    .local v6, "vertices":[F
    array-length v2, v6

    .line 41
    .local v2, "numFloats":I
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    add-float v4, v9, v10

    .line 42
    .local v4, "translateX":F
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    add-float v5, v9, v10

    .line 43
    .local v5, "translateY":F
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    .line 44
    .local v0, "cos":F
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v3

    .line 46
    .local v3, "sin":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 47
    aget v7, v6, v1

    .line 48
    .local v7, "x":F
    add-int/lit8 v9, v1, 0x1

    aget v8, v6, v9

    .line 51
    .local v8, "y":F
    sub-float/2addr v7, v4

    .line 52
    sub-float/2addr v8, v5

    .line 55
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1

    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_2

    .line 56
    :cond_1
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    mul-float/2addr v7, v9

    .line 57
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    mul-float/2addr v8, v9

    .line 61
    :cond_2
    iget v9, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 62
    mul-float v9, v0, v7

    mul-float v10, v3, v8

    sub-float v7, v9, v10

    .line 63
    mul-float v9, v3, v7

    mul-float v10, v0, v8

    add-float v8, v9, v10

    .line 67
    :cond_3
    add-float/2addr v7, v4

    .line 68
    add-float/2addr v8, v5

    .line 70
    aput v7, v6, v1

    .line 71
    add-int/lit8 v9, v1, 0x1

    aput v8, v6, v9

    .line 46
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 74
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 103
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 105
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 114
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 115
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 117
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 81
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 83
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 87
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 89
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 100
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 109
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 111
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 95
    return-void
.end method
