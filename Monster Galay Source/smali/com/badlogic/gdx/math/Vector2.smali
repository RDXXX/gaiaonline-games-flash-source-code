.class public Lcom/badlogic/gdx/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcaed5be6c419bb3L

.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 51
    return-void
.end method


# virtual methods
.method public add(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 121
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 123
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 113
    return-object p0
.end method

.method public angle()F
    .locals 5

    .prologue
    .line 215
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee0

    mul-float v0, v1, v2

    .line 216
    .local v0, "angle":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 217
    :cond_0
    return v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    return-object v0
.end method

.method public crs(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 209
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 201
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 129
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dst(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 153
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v2

    .line 154
    .local v0, "x_d":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v2

    .line 155
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 144
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 145
    .local v0, "x_d":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 146
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 161
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 162
    .local v0, "x_d":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 163
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public len()F
    .locals 3

    .prologue
    .line 60
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "alpha"    # F

    .prologue
    .line 244
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 245
    .local v0, "r":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->tmp()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 246
    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 136
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 138
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 190
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    add-float v0, v2, v3

    .line 191
    .local v0, "x":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->vals:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    add-float v1, v2, v3

    .line 192
    .local v1, "y":F
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 193
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 194
    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 100
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 104
    :cond_0
    return-object p0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .param p1, "angle"    # F

    .prologue
    .line 224
    const v5, 0x3c8efa35

    mul-float v3, p1, v5

    .line 225
    .local v3, "rad":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 226
    .local v0, "cos":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 228
    .local v4, "sin":F
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v4

    sub-float v1, v5, v6

    .line 229
    .local v1, "newX":F
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v0

    add-float v2, v5, v6

    .line 231
    .local v2, "newY":F
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 232
    iput v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 234
    return-object p0
.end method

.method public set(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 83
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 84
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 72
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 73
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 74
    return-object p0
.end method

.method public sub(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 175
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 177
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 91
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 93
    return-object p0
.end method

.method public tmp()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
