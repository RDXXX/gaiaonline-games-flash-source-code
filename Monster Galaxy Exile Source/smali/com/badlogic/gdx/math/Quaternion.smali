.class public Lcom/badlogic/gdx/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NORMALIZATION_TOLERANCE:F = 1.0E-5f

.field private static final serialVersionUID:J = -0x6a54731e78ad5e10L

.field private static tmp1:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp2:Lcom/badlogic/gdx/math/Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 0
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 62
    return-void
.end method

.method public static idt()Lcom/badlogic/gdx/math/Quaternion;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public conjugate()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 161
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 163
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    return-object v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Quaternion;)F
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 413
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    if-ne p0, p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    instance-of v3, p1, Lcom/badlogic/gdx/math/Quaternion;

    if-nez v3, :cond_2

    move v1, v2

    .line 402
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 404
    check-cast v0, Lcom/badlogic/gdx/math/Quaternion;

    .line 405
    .local v0, "comp":Lcom/badlogic/gdx/math/Quaternion;
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

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
    .line 139
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 420
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 424
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "q"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 185
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 186
    .local v1, "newX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 187
    .local v2, "newY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 188
    .local v3, "newZ":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 189
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 190
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 191
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 192
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 193
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "q"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 201
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 202
    .local v1, "newX":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 203
    .local v2, "newY":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 204
    .local v3, "newZ":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 205
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 206
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 207
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 208
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 209
    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Quaternion;
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len2()F

    move-result v0

    .line 146
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 147
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 148
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 149
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 150
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 151
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 153
    :cond_0
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 72
    iput p2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 73
    iput p3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 74
    iput p4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 75
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 82
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 91
    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 92
    .local v0, "l_ang":F
    div-float v3, v0, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 93
    .local v2, "l_sin":F
    div-float v3, v0, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 94
    .local v1, "l_cos":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v2

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v2

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    return-object v3
.end method

.method public setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 12
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 118
    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float p1, v9

    .line 119
    float-to-double v9, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float p2, v9

    .line 120
    float-to-double v9, p3

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float p3, v9

    .line 121
    mul-float v8, p3, v11

    .line 122
    .local v8, "num9":F
    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 123
    .local v5, "num6":F
    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v4, v9

    .line 124
    .local v4, "num5":F
    mul-float v7, p2, v11

    .line 125
    .local v7, "num8":F
    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 126
    .local v3, "num4":F
    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 127
    .local v2, "num3":F
    mul-float v6, p1, v11

    .line 128
    .local v6, "num7":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v1, v9

    .line 129
    .local v1, "num2":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 130
    .local v0, "num":F
    mul-float v9, v0, v3

    mul-float/2addr v9, v4

    mul-float v10, v1, v2

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 131
    mul-float v9, v1, v2

    mul-float/2addr v9, v4

    mul-float v10, v0, v3

    mul-float/2addr v10, v5

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 132
    mul-float v9, v0, v2

    mul-float/2addr v9, v5

    mul-float v10, v1, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 133
    mul-float v9, v0, v2

    mul-float/2addr v9, v4

    mul-float v10, v1, v3

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 134
    return-object p0
.end method

.method public setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 29
    .param p1, "xx"    # F
    .param p2, "xy"    # F
    .param p3, "xz"    # F
    .param p4, "yx"    # F
    .param p5, "yy"    # F
    .param p6, "yz"    # F
    .param p7, "zx"    # F
    .param p8, "zy"    # F
    .param p9, "zz"    # F

    .prologue
    .line 310
    move/from16 v5, p1

    .local v5, "m00":F
    move/from16 v6, p4

    .local v6, "m01":F
    move/from16 v7, p7

    .line 311
    .local v7, "m02":F
    move/from16 v8, p2

    .local v8, "m10":F
    move/from16 v9, p5

    .local v9, "m11":F
    move/from16 v10, p8

    .line 312
    .local v10, "m12":F
    move/from16 v11, p3

    .local v11, "m20":F
    move/from16 v12, p6

    .local v12, "m21":F
    move/from16 v13, p9

    .line 313
    .local v13, "m22":F
    add-float v25, v5, v9

    add-float v16, v25, v13

    .line 317
    .local v16, "t":F
    const/16 v25, 0x0

    cmpl-float v25, v16, v25

    if-ltz v25, :cond_0

    .line 318
    const/high16 v25, 0x3f800000    # 1.0f

    add-float v25, v25, v16

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 319
    .local v14, "s":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v17, v25, v14

    .line 320
    .local v17, "w":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    div-double v14, v25, v14

    .line 321
    sub-float v25, v12, v10

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v19, v25, v14

    .line 322
    .local v19, "x":D
    sub-float v25, v7, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v21, v25, v14

    .line 323
    .local v21, "y":D
    sub-float v25, v8, v6

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v25, v14

    .line 347
    .local v23, "z":D
    :goto_0
    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v26, v0

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v27, v0

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v25

    return-object v25

    .line 324
    .end local v14    # "s":D
    .end local v17    # "w":D
    .end local v19    # "x":D
    .end local v21    # "y":D
    .end local v23    # "z":D
    :cond_0
    cmpl-float v25, v5, v9

    if-lez v25, :cond_1

    cmpl-float v25, v5, v13

    if-lez v25, :cond_1

    .line 325
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v27, v0

    add-double v25, v25, v27

    float-to-double v0, v9

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    float-to-double v0, v13

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 326
    .restart local v14    # "s":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v19, v14, v25

    .line 327
    .restart local v19    # "x":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    div-double v14, v25, v14

    .line 328
    add-float v25, v8, v6

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v21, v25, v14

    .line 329
    .restart local v21    # "y":D
    add-float v25, v7, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v25, v14

    .line 330
    .restart local v23    # "z":D
    sub-float v25, v12, v10

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v17, v25, v14

    .line 331
    .restart local v17    # "w":D
    goto :goto_0

    .end local v14    # "s":D
    .end local v17    # "w":D
    .end local v19    # "x":D
    .end local v21    # "y":D
    .end local v23    # "z":D
    :cond_1
    cmpl-float v25, v9, v13

    if-lez v25, :cond_2

    .line 332
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v9

    move-wide/from16 v27, v0

    add-double v25, v25, v27

    float-to-double v0, v5

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    float-to-double v0, v13

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 333
    .restart local v14    # "s":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v21, v14, v25

    .line 334
    .restart local v21    # "y":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    div-double v14, v25, v14

    .line 335
    add-float v25, v8, v6

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v19, v25, v14

    .line 336
    .restart local v19    # "x":D
    add-float v25, v12, v10

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v25, v14

    .line 337
    .restart local v23    # "z":D
    sub-float v25, v7, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v17, v25, v14

    .line 338
    .restart local v17    # "w":D
    goto/16 :goto_0

    .line 339
    .end local v14    # "s":D
    .end local v17    # "w":D
    .end local v19    # "x":D
    .end local v21    # "y":D
    .end local v23    # "z":D
    :cond_2
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v13

    move-wide/from16 v27, v0

    add-double v25, v25, v27

    float-to-double v0, v5

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    float-to-double v0, v9

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 340
    .restart local v14    # "s":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v23, v14, v25

    .line 341
    .restart local v23    # "z":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    div-double v14, v25, v14

    .line 342
    add-float v25, v7, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v19, v25, v14

    .line 343
    .restart local v19    # "x":D
    add-float v25, v12, v10

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v21, v25, v14

    .line 344
    .restart local v21    # "y":D
    sub-float v25, v8, v6

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v17, v25, v14

    .restart local v17    # "w":D
    goto/16 :goto_0
.end method

.method public setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "angle"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 271
    const v3, 0x3c8efa35

    mul-float v0, p4, v3

    .line 272
    .local v0, "l_ang":F
    div-float v3, v0, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    .line 273
    .local v2, "l_sin":F
    div-float v3, v0, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    .line 274
    .local v1, "l_cos":F
    mul-float v3, p1, v2

    mul-float v4, p2, v2

    mul-float v5, p3, v2

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    return-object v3
.end method

.method public setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 260
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 10
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 284
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v2, v0, v2

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v3, v0, v3

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v5, v0, v5

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v6, v0, v6

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aget v7, v0, v7

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x6

    aget v8, v0, v8

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v9, 0xa

    aget v9, v0, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 16
    .param p1, "end"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "alpha"    # F

    .prologue
    .line 356
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 394
    :goto_0
    return-object p0

    .line 360
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/math/Quaternion;->dot(Lcom/badlogic/gdx/math/Quaternion;)F

    move-result v3

    .line 362
    .local v3, "result":F
    float-to-double v12, v3

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 364
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/math/Quaternion;->mul(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 365
    neg-float v3, v3

    .line 369
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v4, v12, p2

    .line 370
    .local v4, "scale0":F
    move/from16 v5, p2

    .line 374
    .local v5, "scale1":F
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    float-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 376
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    .line 377
    .local v6, "theta":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double v1, v12, v14

    .line 381
    .local v1, "invSinTheta":D
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v12, p2

    float-to-double v12, v12

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    double-to-float v4, v12

    .line 382
    move/from16 v0, p2

    float-to-double v12, v0

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    double-to-float v5, v12

    .line 387
    .end local v1    # "invSinTheta":D
    .end local v6    # "theta":D
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v13, v5

    add-float v9, v12, v13

    .line 388
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v13, v5

    add-float v10, v12, v13

    .line 389
    .local v10, "y":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v13, v5

    add-float v11, v12, v13

    .line 390
    .local v11, "z":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v13, v5

    add-float v8, v12, v13

    .line 391
    .local v8, "w":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11, v8}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_0
.end method

.method public toMatrix([F)V
    .locals 14
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 218
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v1, v9, v10

    .line 219
    .local v1, "xx":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v2, v9, v10

    .line 220
    .local v2, "xy":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v3, v9, v10

    .line 221
    .local v3, "xz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v0, v9, v10

    .line 222
    .local v0, "xw":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v5, v9, v10

    .line 223
    .local v5, "yy":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v6, v9, v10

    .line 224
    .local v6, "yz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v4, v9, v10

    .line 225
    .local v4, "yw":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v8, v9, v10

    .line 226
    .local v8, "zz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v7, v9, v10

    .line 228
    .local v7, "zw":F
    const/4 v9, 0x0

    add-float v10, v5, v8

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 229
    const/4 v9, 0x4

    sub-float v10, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 230
    const/16 v9, 0x8

    add-float v10, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 231
    const/16 v9, 0xc

    aput v12, p1, v9

    .line 232
    const/4 v9, 0x1

    add-float v10, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 233
    const/4 v9, 0x5

    add-float v10, v1, v8

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 234
    const/16 v9, 0x9

    sub-float v10, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 235
    const/16 v9, 0xd

    aput v12, p1, v9

    .line 236
    const/4 v9, 0x2

    sub-float v10, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 237
    const/4 v9, 0x6

    add-float v10, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 238
    const/16 v9, 0xa

    add-float v10, v1, v5

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 239
    const/16 v9, 0xe

    aput v12, p1, v9

    .line 240
    const/4 v9, 0x3

    aput v12, p1, v9

    .line 241
    const/4 v9, 0x7

    aput v12, p1, v9

    .line 242
    const/16 v9, 0xb

    aput v12, p1, v9

    .line 243
    const/16 v9, 0xf

    aput v13, p1, v9

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 171
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 172
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 173
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 175
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 176
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 177
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 178
    return-void
.end method
