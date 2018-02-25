.class public Lcom/badlogic/gdx/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static X:Lcom/badlogic/gdx/math/Vector3; = null

.field public static Y:Lcom/badlogic/gdx/math/Vector3; = null

.field public static Z:Lcom/badlogic/gdx/math/Vector3; = null

.field private static final serialVersionUID:J = 0x354a9d4dc2f0cbeaL

.field private static tmp:Lcom/badlogic/gdx/math/Vector3;

.field private static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field private static tmp3:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 60
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 67
    return-void
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # F

    .prologue
    .line 146
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 129
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    return-object v0
.end method

.method public crs(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 252
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 243
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public div(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 187
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, p1

    .line 188
    .local v0, "d":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public dot(FFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 346
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 236
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dst(FFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 5
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 210
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 211
    .local v0, "a":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 212
    .local v1, "b":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 214
    .local v2, "c":F
    mul-float/2addr v0, v0

    .line 215
    mul-float/2addr v1, v1

    .line 216
    mul-float/2addr v2, v2

    .line 218
    add-float v3, v0, v1

    add-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public dst2(FFF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 373
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v3

    .line 374
    .local v0, "a":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v3

    .line 375
    .local v1, "b":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v3

    .line 377
    .local v2, "c":F
    mul-float/2addr v0, v0

    .line 378
    mul-float/2addr v1, v1

    .line 379
    mul-float/2addr v2, v2

    .line 381
    add-float v3, v0, v1

    add-float/2addr v3, v2

    return v3
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 5
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 355
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 356
    .local v0, "a":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 357
    .local v1, "b":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 359
    .local v2, "c":F
    mul-float/2addr v0, v0

    .line 360
    mul-float/2addr v1, v1

    .line 361
    mul-float/2addr v2, v2

    .line 363
    add-float v3, v0, v1

    add-float/2addr v3, v2

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    if-ne p0, p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 405
    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    .line 406
    .local v0, "other":Lcom/badlogic/gdx/math/Vector3;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 407
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 408
    :cond_5
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 391
    const/16 v0, 0x1f

    .line 392
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 393
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 394
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 395
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 396
    return v1
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 204
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnit()Z
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 193
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

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
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .prologue
    .line 305
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 306
    .local v0, "r":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 307
    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 179
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 259
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 260
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, v0, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xe

    aget v4, v0, v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 226
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 229
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->div(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 271
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 272
    .local v0, "l_mat":[F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0xb

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, v0, v3

    add-float v1, v2, v3

    .line 273
    .local v1, "l_w":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, v0, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v6, 0xa

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, v0, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    return-object v2
.end method

.method public rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 283
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 284
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "scalarX"    # F
    .param p2, "scalarY"    # F
    .param p3, "scalarZ"    # F

    .prologue
    .line 418
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 419
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 421
    return-object p0
.end method

.method public set(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 77
    iput p2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 78
    iput p3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 79
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 87
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 95
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 8
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 318
    .local v0, "dot":F
    float-to-double v4, v0

    const-wide v6, 0x3fefff972474538fL    # 0.99995

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    float-to-double v4, v0

    const-wide v6, 0x3feffbe76c8b4396L    # 0.9995

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 320
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 331
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :goto_0
    return-object p0

    .line 324
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 325
    :cond_2
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    .line 327
    :cond_3
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 328
    .local v2, "theta0":F
    mul-float v1, v2, p2

    .line 329
    .local v1, "theta":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    .line 330
    .local v3, "v2":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 331
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 171
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 163
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "a_vec"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 153
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public tmp()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public tmp2()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method tmp3()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
