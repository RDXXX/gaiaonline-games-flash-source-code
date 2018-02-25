.class public Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final ATAN2_BITS:I = 0x7

.field private static final ATAN2_BITS2:I = 0xe

.field private static final ATAN2_COUNT:I = 0x4000

.field private static final ATAN2_DIM:I

.field private static final ATAN2_MASK:I = 0x3fff

.field private static final BIG_ENOUGH_CEIL:D

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field private static final INV_ATAN2_DIM_MINUS_1:F

.field public static final PI:F = 3.1415927f

.field private static final SIN_BITS:I = 0xd

.field private static final SIN_COUNT:I = 0x2000

.field private static final SIN_MASK:I = 0x1fff

.field private static final atan2:[F

.field public static final cos:[F

.field private static final degFull:F = 360.0f

.field private static final degToIndex:F = 22.755556f

.field public static final degreesToRadians:F = 0.017453292f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 1303.7972f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;

.field public static final sin:[F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x41b60b61

    const v9, 0x3c8efa35

    const/16 v8, 0x2000

    .line 41
    new-array v5, v8, [F

    sput-object v5, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    .line 42
    new-array v5, v8, [F

    sput-object v5, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 46
    int-to-float v5, v1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    const/high16 v6, 0x46000000    # 8192.0f

    div-float/2addr v5, v6

    const v6, 0x40c90fdb

    mul-float v0, v5, v6

    .line 47
    .local v0, "a":F
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v1

    .line 48
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "a":F
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v5, 0x168

    if-ge v1, v5, :cond_1

    .line 51
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    int-to-float v6, v1

    mul-float/2addr v6, v10

    float-to-int v6, v6

    and-int/lit16 v6, v6, 0x1fff

    int-to-float v7, v1

    mul-float/2addr v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v5, v6

    .line 52
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    int-to-float v6, v1

    mul-float/2addr v6, v10

    float-to-int v6, v6

    and-int/lit16 v6, v6, 0x1fff

    int-to-float v7, v1

    mul-float/2addr v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v5, v6

    .line 50
    add-int/lit8 v1, v1, 0x5a

    goto :goto_1

    .line 78
    :cond_1
    const-wide/high16 v5, 0x40d0000000000000L    # 16384.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    sput v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    .line 79
    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    sput v5, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    .line 80
    const/16 v5, 0x4000

    new-array v5, v5, [F

    sput-object v5, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    .line 82
    const/4 v1, 0x0

    :goto_2
    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-ge v1, v5, :cond_3

    .line 83
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-ge v2, v5, :cond_2

    .line 84
    int-to-float v5, v1

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 85
    .local v3, "x0":F
    int-to-float v5, v2

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 86
    .local v4, "y0":F
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    float-to-double v7, v4

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v5, v6

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    .end local v2    # "j":I
    :cond_3
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sput-object v5, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    .line 166
    const-wide v5, 0x40d0004000000000L    # 16385.0

    invoke-static {v5, v6}, Lcom/badlogic/gdx/utils/NumberUtils;->doubleToLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/badlogic/gdx/utils/NumberUtils;->longBitsToDouble(J)D

    move-result-wide v5

    sput-wide v5, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final atan2(FF)F
    .locals 8
    .param p0, "y"    # F
    .param p1, "x"    # F

    .prologue
    const/4 v6, 0x0

    .line 93
    cmpg-float v5, p1, v6

    if-gez v5, :cond_1

    .line 94
    cmpg-float v5, p0, v6

    if-gez v5, :cond_0

    .line 95
    neg-float p0, p0

    .line 96
    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    .local v2, "mul":F
    :goto_0
    neg-float p1, p1

    .line 100
    const v0, -0x3fb6f025

    .line 109
    .local v0, "add":F
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, p1, p0

    if-gez v5, :cond_3

    move v5, p0

    :goto_2
    sget v7, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    mul-float/2addr v5, v7

    div-float v1, v6, v5

    .line 110
    .local v1, "invDiv":F
    mul-float v5, p1, v1

    float-to-int v3, v5

    .line 111
    .local v3, "xi":I
    mul-float v5, p0, v1

    float-to-int v4, v5

    .line 112
    .local v4, "yi":I
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v5, v5, v6

    add-float/2addr v5, v0

    mul-float/2addr v5, v2

    return v5

    .line 98
    .end local v0    # "add":F
    .end local v1    # "invDiv":F
    .end local v2    # "mul":F
    .end local v3    # "xi":I
    .end local v4    # "yi":I
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .restart local v2    # "mul":F
    goto :goto_0

    .line 102
    .end local v2    # "mul":F
    :cond_1
    cmpg-float v5, p0, v6

    if-gez v5, :cond_2

    .line 103
    neg-float p0, p0

    .line 104
    const/high16 v2, -0x40800000    # -1.0f

    .line 107
    .restart local v2    # "mul":F
    :goto_3
    const/4 v0, 0x0

    .restart local v0    # "add":F
    goto :goto_1

    .line 106
    .end local v0    # "add":F
    .end local v2    # "mul":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "mul":F
    goto :goto_3

    .restart local v0    # "add":F
    :cond_3
    move v5, p1

    .line 109
    goto :goto_2
.end method

.method public static ceil(F)I
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 185
    float-to-double v0, p0

    sget-wide v2, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 191
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final cos(F)F
    .locals 2
    .param p0, "rad"    # F

    .prologue
    .line 61
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final cosDeg(F)F
    .locals 2
    .param p0, "deg"    # F

    .prologue
    .line 69
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 173
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 179
    float-to-int v0, p0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 158
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 147
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    .line 148
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 149
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 150
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 151
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 152
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 153
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 154
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method public static final random()F
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static final random(F)F
    .locals 1
    .param p0, "range"    # F

    .prologue
    .line 137
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "end"    # F

    .prologue
    .line 141
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(I)I
    .locals 2
    .param p0, "range"    # I

    .prologue
    .line 121
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static final random(II)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomBoolean()Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static round(F)I
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 197
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 202
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final sin(F)F
    .locals 2
    .param p0, "rad"    # F

    .prologue
    .line 57
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final sinDeg(F)F
    .locals 2
    .param p0, "deg"    # F

    .prologue
    .line 65
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method
