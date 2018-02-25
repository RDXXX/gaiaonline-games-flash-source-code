.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 206
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 207
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 246
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 247
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 348
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 349
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 350
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 351
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 352
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static det(FFFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 520
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 524
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 5
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v4, 0x0

    .line 126
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 127
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 128
    .local v0, "l":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 129
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static getLowestPositiveRoot(FFF)F
    .locals 10
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v9, 0x0

    .line 36
    mul-float v7, p1, p1

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, p0

    mul-float/2addr v8, p2

    sub-float v0, v7, v8

    .line 37
    .local v0, "det":F
    cmpg-float v7, v0, v9

    if-gez v7, :cond_1

    move v2, v6

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 39
    :cond_1
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 40
    .local v4, "sqrtD":F
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, p0

    div-float v1, v7, v8

    .line 41
    .local v1, "invA":F
    neg-float v7, p1

    sub-float/2addr v7, v4

    mul-float v2, v7, v1

    .line 42
    .local v2, "r1":F
    neg-float v7, p1

    add-float/2addr v7, v4

    mul-float v3, v7, v1

    .line 44
    .local v3, "r2":F
    cmpl-float v7, v2, v3

    if-lez v7, :cond_2

    .line 45
    move v5, v3

    .line 46
    .local v5, "tmp":F
    move v3, v2

    .line 47
    move v2, v5

    .line 50
    .end local v5    # "tmp":F
    :cond_2
    cmpl-float v7, v2, v9

    if-gtz v7, :cond_0

    .line 52
    cmpl-float v7, v3, v9

    if-lez v7, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v6

    .line 54
    goto :goto_0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 18
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y1":F
    move-object/from16 v0, p1

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x2":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v11, "y2":F
    move-object/from16 v0, p2

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x3":F
    move-object/from16 v0, p2

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v12, "y3":F
    move-object/from16 v0, p3

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v8, "x4":F
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 482
    .local v13, "y4":F
    invoke-static {v5, v10, v6, v11}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v1

    .line 483
    .local v1, "det1":F
    invoke-static {v7, v12, v8, v13}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v2

    .line 484
    .local v2, "det2":F
    sub-float v14, v5, v6

    sub-float v15, v10, v11

    sub-float v16, v7, v8

    sub-float v17, v12, v13

    invoke-static/range {v14 .. v17}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v3

    .line 486
    .local v3, "det3":F
    sub-float v14, v5, v6

    sub-float v15, v7, v8

    invoke-static {v1, v14, v2, v15}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v14

    div-float v4, v14, v3

    .line 487
    .local v4, "x":F
    sub-float v14, v10, v11

    sub-float v15, v12, v13

    invoke-static {v1, v14, v2, v15}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v14

    div-float v9, v14, v3

    .line 489
    .local v9, "y":F
    move-object/from16 v0, p4

    iput v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 490
    move-object/from16 v0, p4

    iput v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 492
    const/4 v14, 0x1

    return v14
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 309
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v2, v9, v8

    .line 310
    .local v2, "divX":F
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v3, v9, v8

    .line 311
    .local v3, "divY":F
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v4, v9, v8

    .line 313
    .local v4, "divZ":F
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v2

    .line 314
    .local v0, "a":F
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v2

    .line 315
    .local v1, "b":F
    cmpg-float v8, v0, v1

    if-gez v8, :cond_6

    .line 316
    move v6, v0

    .line 317
    .local v6, "min":F
    move v5, v1

    .line 323
    .local v5, "max":F
    :goto_0
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v3

    .line 324
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v3

    .line 325
    cmpl-float v8, v0, v1

    if-lez v8, :cond_0

    .line 326
    move v7, v0

    .line 327
    .local v7, "t":F
    move v0, v1

    .line 328
    move v1, v7

    .line 331
    .end local v7    # "t":F
    :cond_0
    cmpl-float v8, v0, v6

    if-lez v8, :cond_1

    move v6, v0

    .line 332
    :cond_1
    cmpg-float v8, v1, v5

    if-gez v8, :cond_2

    move v5, v1

    .line 334
    :cond_2
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v4

    .line 335
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v4

    .line 336
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    .line 337
    move v7, v0

    .line 338
    .restart local v7    # "t":F
    move v0, v1

    .line 339
    move v1, v7

    .line 342
    .end local v7    # "t":F
    :cond_3
    cmpl-float v8, v0, v6

    if-lez v8, :cond_4

    move v6, v0

    .line 343
    :cond_4
    cmpg-float v8, v1, v5

    if-gez v8, :cond_5

    move v5, v1

    .line 345
    :cond_5
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_7

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_7

    const/4 v8, 0x1

    :goto_1
    return v8

    .line 319
    .end local v5    # "max":F
    .end local v6    # "min":F
    :cond_6
    move v6, v1

    .line 320
    .restart local v6    # "min":F
    move v5, v0

    .restart local v5    # "max":F
    goto :goto_0

    .line 345
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 192
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 193
    .local v0, "denom":F
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_3

    .line 194
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    div-float v1, v4, v0

    .line 195
    .local v1, "t":F
    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    .line 203
    .end local v1    # "t":F
    :cond_0
    :goto_0
    return v2

    .line 197
    .restart local v1    # "t":F
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v2, v3

    .line 198
    goto :goto_0

    .line 199
    .end local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_0

    .line 200
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v2, v3

    .line 201
    goto :goto_0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 257
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 258
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 259
    const/high16 v8, 0x40000000    # 2.0f

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    mul-float v0, v8, v9

    .line 260
    .local v0, "b":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    mul-float v9, p2, p2

    sub-float v1, v8, v9

    .line 261
    .local v1, "c":F
    mul-float v8, v0, v0

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v1

    sub-float v2, v8, v9

    .line 262
    .local v2, "disc":F
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 297
    :goto_0
    return v8

    .line 265
    :cond_0
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 267
    .local v3, "distSqrt":F
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    .line 268
    neg-float v8, v0

    sub-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .line 273
    .local v4, "q":F
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    div-float v5, v4, v8

    .line 274
    .local v5, "t0":F
    div-float v6, v1, v4

    .line 277
    .local v6, "t1":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_1

    .line 279
    move v7, v5

    .line 280
    .local v7, "temp":F
    move v5, v6

    .line 281
    move v6, v7

    .line 287
    .end local v7    # "temp":F
    :cond_1
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 270
    .end local v4    # "q":F
    .end local v5    # "t0":F
    .end local v6    # "t1":F
    :cond_2
    neg-float v8, v0

    add-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .restart local v4    # "q":F
    goto :goto_1

    .line 290
    .restart local v5    # "t0":F
    .restart local v6    # "t1":F
    :cond_3
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    .line 291
    if-eqz p3, :cond_4

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 292
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 296
    :cond_5
    if-eqz p3, :cond_6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 297
    :cond_6
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 218
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v8, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 219
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v8, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 241
    :goto_0
    return v8

    .line 221
    :cond_0
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 222
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 223
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 225
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 226
    .local v1, "dot00":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 227
    .local v2, "dot01":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 228
    .local v3, "dot02":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 229
    .local v4, "dot11":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    .line 231
    .local v5, "dot12":F
    mul-float v8, v1, v4

    mul-float v9, v2, v2

    sub-float v0, v8, v9

    .line 232
    .local v0, "denom":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 234
    :cond_1
    mul-float v8, v4, v3

    mul-float v9, v2, v5

    sub-float/2addr v8, v9

    div-float v6, v8, v0

    .line 235
    .local v6, "u":F
    mul-float v8, v1, v5

    mul-float v9, v2, v3

    sub-float/2addr v8, v9

    div-float v7, v8, v0

    .line 237
    .local v7, "v":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_3

    add-float v8, v6, v7

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 238
    if-eqz p4, :cond_2

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 239
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 241
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "triangles":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    const/4 v7, 0x1

    .line 437
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 439
    .local v2, "min_dist":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "triangle list size is not a multiple of 3"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_2

    .line 442
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v1, 0x2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    .line 444
    .local v3, "result":Z
    if-ne v3, v7, :cond_1

    .line 445
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 446
    .local v0, "dist":F
    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    .line 447
    move v2, v0

    .line 448
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 441
    .end local v0    # "dist":F
    :cond_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 453
    .end local v3    # "result":Z
    :cond_2
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    if-nez v4, :cond_3

    .line 454
    const/4 v4, 0x0

    .line 457
    :goto_1
    return v4

    .line 456
    :cond_3
    if-eqz p2, :cond_4

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v4, v7

    .line 457
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 12
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "triangles"    # [F
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x1

    .line 361
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 362
    .local v3, "min_dist":F
    const/4 v1, 0x0

    .line 364
    .local v1, "hit":Z
    array-length v6, p1

    div-int/lit8 v6, v6, 0x3

    rem-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x6

    if-ge v2, v6, :cond_2

    .line 367
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v7, p1, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, p1, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x3

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x4

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x5

    aget v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v9, v2, 0x6

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x7

    aget v10, p1, v10

    add-int/lit8 v11, v2, 0x8

    aget v11, p1, v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    .line 371
    .local v4, "result":Z
    if-ne v4, v5, :cond_1

    .line 372
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 373
    .local v0, "dist":F
    cmpg-float v6, v0, v3

    if-gez v6, :cond_1

    .line 374
    move v3, v0

    .line 375
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 376
    const/4 v1, 0x1

    .line 366
    .end local v0    # "dist":F
    :cond_1
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    .line 381
    .end local v4    # "result":Z
    :cond_2
    if-nez v1, :cond_4

    .line 382
    const/4 v5, 0x0

    .line 385
    :cond_3
    :goto_1
    return v5

    .line 384
    :cond_4
    if-eqz p2, :cond_3

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 15
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "vertices"    # [F
    .param p2, "indices"    # [S
    .param p3, "vertexSize"    # I
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 398
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 399
    .local v7, "min_dist":F
    const/4 v2, 0x0

    .line 401
    .local v2, "hit":Z
    move-object/from16 v0, p2

    array-length v9, v0

    rem-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "triangle list size is not a multiple of 3"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 403
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v9, v0

    if-ge v3, v9, :cond_2

    .line 404
    aget-short v9, p2, v3

    mul-int v4, v9, p3

    .line 405
    .local v4, "i1":I
    add-int/lit8 v9, v3, 0x1

    aget-short v9, p2, v9

    mul-int v5, v9, p3

    .line 406
    .local v5, "i2":I
    add-int/lit8 v9, v3, 0x2

    aget-short v9, p2, v9

    mul-int v6, v9, p3

    .line 408
    .local v6, "i3":I
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v10, p1, v4

    add-int/lit8 v11, v4, 0x1

    aget v11, p1, v11

    add-int/lit8 v12, v4, 0x2

    aget v12, p1, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v11, p1, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, p1, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, p1, v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v12, p1, v6

    add-int/lit8 v13, v6, 0x1

    aget v13, p1, v13

    add-int/lit8 v14, v6, 0x2

    aget v14, p1, v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    .line 412
    .local v8, "result":Z
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 413
    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    .line 414
    .local v1, "dist":F
    cmpg-float v9, v1, v7

    if-gez v9, :cond_1

    .line 415
    move v7, v1

    .line 416
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 417
    const/4 v2, 0x1

    .line 403
    .end local v1    # "dist":F
    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 422
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "result":Z
    :cond_2
    if-nez v2, :cond_3

    .line 423
    const/4 v9, 0x0

    .line 426
    :goto_1
    return v9

    .line 425
    :cond_3
    if-eqz p4, :cond_4

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 426
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "a"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "b"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 9
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "squareRadius"    # F

    .prologue
    const/4 v8, 0x0

    .line 140
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 142
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 143
    .local v0, "l":F
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 144
    .local v1, "u":F
    cmpg-float v4, v1, v8

    if-gtz v4, :cond_0

    .line 145
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 153
    :goto_0
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v2, v4, v5

    .line 154
    .local v2, "x":F
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v3, v4, v5

    .line 156
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 146
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    cmpl-float v4, v1, v0

    if-ltz v4, :cond_1

    .line 147
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 149
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 150
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 156
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 8
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "radius"    # F
    .param p4, "displacement"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    .line 170
    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 171
    .local v1, "u":F
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 172
    .local v0, "d":F
    mul-float v3, v0, v0

    div-float/2addr v1, v3

    .line 173
    cmpg-float v3, v1, v7

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 174
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 175
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 176
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v0

    .line 177
    cmpg-float v3, v0, p3

    if-gez v3, :cond_0

    .line 178
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move v2, v0

    .line 179
    goto :goto_0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 5
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 87
    .local v1, "dir":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 88
    .local v0, "denom":F
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float v2, v3, v0

    .line 89
    .local v2, "t":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 92
    :goto_0
    return v3

    .line 91
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 92
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 15
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 504
    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v4, "x1":F
    iget v8, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y1":F
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v9, "y2":F
    move-object/from16 v0, p2

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x3":F
    move-object/from16 v0, p2

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    move-object/from16 v0, p3

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x4":F
    move-object/from16 v0, p3

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 506
    .local v11, "y4":F
    sub-float v12, v11, v10

    sub-float v13, v5, v4

    mul-float/2addr v12, v13

    sub-float v13, v7, v6

    sub-float v14, v9, v8

    mul-float/2addr v13, v14

    sub-float v1, v12, v13

    .line 507
    .local v1, "d":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 516
    :goto_0
    return v12

    .line 509
    :cond_0
    sub-float v12, v7, v6

    sub-float v13, v8, v10

    mul-float/2addr v12, v13

    sub-float v13, v11, v10

    sub-float v14, v4, v6

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float v2, v12, v1

    .line 510
    .local v2, "ua":F
    sub-float v12, v5, v4

    sub-float v13, v8, v10

    mul-float/2addr v12, v13

    sub-float v13, v9, v8

    sub-float v14, v4, v6

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float v3, v12, v1

    .line 512
    .local v3, "ub":F
    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-ltz v12, :cond_1

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v2, v12

    if-lez v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 513
    :cond_2
    const/4 v12, 0x0

    cmpg-float v12, v3, v12

    if-ltz v12, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v3, v12

    if-lez v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 515
    :cond_4
    if-eqz p4, :cond_5

    sub-float v12, v5, v4

    mul-float/2addr v12, v2

    add-float/2addr v12, v4

    sub-float v13, v9, v8

    mul-float/2addr v13, v2

    add-float/2addr v13, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 516
    :cond_5
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public static isPointInPolygon(Ljava/util/List;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 7
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 103
    .local v1, "j":I
    const/4 v2, 0x0

    .line 104
    .local v2, "oddNodes":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 105
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 107
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, v6, v3

    div-float/2addr v5, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v6, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 109
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 112
    :cond_2
    :goto_1
    move v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 109
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :cond_4
    return v2
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 70
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 71
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 72
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 75
    .local v0, "ab":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 76
    .local v1, "ac":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 77
    .local v3, "bc":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 79
    .local v4, "cc":F
    mul-float v6, v3, v1

    mul-float v7, v4, v0

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v5

    .line 80
    :cond_1
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 81
    .local v2, "bb":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 82
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static overlapCircleRectangle(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5
    .param p0, "c"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 543
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 544
    .local v0, "closestX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 546
    .local v1, "closestY":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 547
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 552
    :cond_0
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 553
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 558
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 559
    mul-float/2addr v0, v0

    .line 560
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 561
    mul-float/2addr v1, v1

    .line 563
    add-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 548
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 549
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v2, v3

    goto :goto_0

    .line 554
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 555
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v2, v3

    goto :goto_1

    .line 563
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static overlapCircles(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 6
    .param p0, "c1"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "c2"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 528
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float v2, v4, v5

    .line 529
    .local v2, "x":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float v3, v4, v5

    .line 530
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 531
    .local v0, "distance":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float v1, v4, v5

    .line 532
    .local v1, "radiusSum":F
    mul-float v4, v1, v1

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static overlapRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "r1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "r2"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 536
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
