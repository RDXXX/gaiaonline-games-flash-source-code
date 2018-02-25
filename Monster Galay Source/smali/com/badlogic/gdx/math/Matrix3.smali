.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEGREE_TO_RAD:F = 0.017453292f

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field public vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 33
    return-void
.end method


# virtual methods
.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 50
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v0

    .line 160
    .local v0, "det":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Can\'t invert a singular matrix"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v3, v0

    .line 163
    .local v1, "inv_det":F
    const/16 v3, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 165
    .local v2, "tmp":[F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v3, v3, v12

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v8

    .line 166
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 167
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v10

    .line 168
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v11

    .line 169
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v12

    .line 170
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 171
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 172
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 173
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 175
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v2, v8

    mul-float/2addr v4, v1

    aput v4, v3, v8

    .line 176
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v2, v9

    mul-float/2addr v4, v1

    aput v4, v3, v9

    .line 177
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v2, v10

    mul-float/2addr v4, v1

    aput v4, v3, v10

    .line 178
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v2, v11

    mul-float/2addr v4, v1

    aput v4, v3, v11

    .line 179
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v4, v2, v12

    mul-float/2addr v4, v1

    aput v4, v3, v12

    .line 180
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, v2, v5

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 181
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x6

    const/4 v5, 0x6

    aget v5, v2, v5

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 182
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x7

    const/4 v5, 0x7

    aget v5, v2, v5

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 183
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v4, 0x8

    const/16 v5, 0x8

    aget v5, v2, v5

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 185
    return-object p0

    .line 163
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 13
    .param p1, "m"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 56
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 57
    .local v0, "v00":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 58
    .local v1, "v01":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 60
    .local v2, "v02":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 61
    .local v3, "v10":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 62
    .local v4, "v11":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 64
    .local v5, "v12":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 65
    .local v6, "v20":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 66
    .local v7, "v21":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 68
    .local v8, "v22":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 69
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 70
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x2

    aput v6, v9, v10

    .line 71
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x3

    aput v1, v9, v10

    .line 72
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x4

    aput v4, v9, v10

    .line 73
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x5

    aput v7, v9, v10

    .line 74
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x6

    aput v2, v9, v10

    .line 75
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v10, 0x7

    aput v5, v9, v10

    .line 76
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v10, 0x8

    aput v8, v9, v10

    .line 78
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 229
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/4 v5, 0x0

    .line 85
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 86
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 87
    .local v0, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 89
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 90
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 91
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 93
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 95
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    .line 98
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    .line 99
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 101
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 142
    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 121
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 248
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 238
    return-object p0
.end method
