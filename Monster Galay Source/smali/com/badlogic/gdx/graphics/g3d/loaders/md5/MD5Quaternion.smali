.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
.super Ljava/lang/Object;
.source "MD5Quaternion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field private static final tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->$assertionsDisabled:Z

    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 30
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 31
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 37
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 38
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 39
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 40
    return-void
.end method


# virtual methods
.method public computeW()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 52
    .local v0, "t":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 53
    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    goto :goto_0
.end method

.method public dot(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)F
    .locals 3
    .param p1, "q"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .prologue
    .line 115
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public invert()V
    .locals 4

    .prologue
    .line 169
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 170
    .local v0, "d":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 171
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 172
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 173
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 174
    return-void
.end method

.method public multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V
    .locals 7
    .param p1, "q"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .prologue
    .line 72
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 73
    .local v0, "tw":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 74
    .local v1, "tx":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 75
    .local v2, "ty":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 77
    .local v3, "tz":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 78
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 79
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 80
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 81
    return-void
.end method

.method public multiply(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 7
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 84
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    neg-float v4, v4

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 85
    .local v0, "tw":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 86
    .local v1, "tx":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 87
    .local v2, "ty":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 89
    .local v3, "tz":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 90
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 91
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 92
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 93
    return-void
.end method

.method public normalize()V
    .locals 5

    .prologue
    .line 59
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 61
    .local v1, "mag":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 64
    .local v0, "inv":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 65
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 66
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 67
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 69
    .end local v0    # "inv":F
    :cond_0
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 100
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 101
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 105
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 106
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/math/Vector3;)V

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 112
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V
    .locals 1
    .param p1, "q"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .prologue
    .line 43
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 46
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 47
    return-void
.end method

.method public slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V
    .locals 14
    .param p1, "q"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
    .param p2, "t"    # F

    .prologue
    .line 119
    const/4 v10, 0x0

    cmpg-float v10, p2, v10

    if-gtz v10, :cond_0

    .line 160
    :goto_0
    return-void

    .line 121
    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->dot(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)F

    move-result v0

    .line 128
    .local v0, "cosOmega":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 129
    .local v5, "q1w":F
    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 130
    .local v6, "q1x":F
    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 131
    .local v7, "q1y":F
    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 133
    .local v8, "q1z":F
    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_2

    .line 134
    neg-float v5, v5

    .line 135
    neg-float v6, v6

    .line 136
    neg-float v7, v7

    .line 137
    neg-float v8, v8

    .line 138
    neg-float v0, v0

    .line 141
    :cond_2
    sget-boolean v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->$assertionsDisabled:Z

    if-nez v10, :cond_3

    const v10, 0x3f8ccccd    # 1.1f

    cmpg-float v10, v0, v10

    if-ltz v10, :cond_3

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 145
    :cond_3
    const v10, 0x3f7ff972    # 0.9999f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_4

    .line 146
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v1, v10, p2

    .line 147
    .local v1, "k0":F
    move/from16 v2, p2

    .line 156
    .local v2, "k1":F
    :goto_1
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v10, v1

    mul-float v11, v2, v5

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 157
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v10, v1

    mul-float v11, v2, v6

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 158
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v10, v1

    mul-float v11, v2, v7

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 159
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v10, v1

    mul-float v11, v2, v8

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    goto :goto_0

    .line 149
    .end local v1    # "k0":F
    .end local v2    # "k1":F
    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v11, v0, v0

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 150
    .local v9, "sinOmega":F
    float-to-double v10, v9

    float-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    double-to-float v3, v10

    .line 151
    .local v3, "omega":F
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v4, v10, v9

    .line 152
    .local v4, "oneOverSinOmega":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, p2

    mul-float/2addr v10, v3

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v1, v10, v4

    .line 153
    .restart local v1    # "k0":F
    mul-float v10, p2, v3

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v2, v10, v4

    .restart local v2    # "k1":F
    goto :goto_1
.end method
