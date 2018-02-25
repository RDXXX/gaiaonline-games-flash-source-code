.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;
.super Ljava/lang/Object;
.source "MD5Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;,
        Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;
    }
.end annotation


# static fields
.field static parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static parentPos:Lcom/badlogic/gdx/math/Vector3;

.field static thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 335
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 336
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method private static buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V
    .locals 12
    .param p0, "jointInfos"    # [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;
    .param p1, "baseFrame"    # [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    .param p2, "animFrameData"    # [F
    .param p3, "animation"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .param p4, "frameIndex"    # I

    .prologue
    .line 392
    iget-object v8, p3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v6, v8, p4

    .line 394
    .local v6, "skelFrame":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, p0

    if-ge v3, v8, :cond_7

    .line 395
    aget-object v2, p1, v3

    .line 396
    .local v2, "baseJoint":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 397
    .local v1, "animatedPos":Lcom/badlogic/gdx/math/Vector3;
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    .line 398
    .local v0, "animatedOrient":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
    const/4 v4, 0x0

    .line 400
    .local v4, "j":I
    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 401
    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 403
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 404
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 405
    add-int/lit8 v4, v4, 0x1

    .line 408
    :cond_0
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 409
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 410
    add-int/lit8 v4, v4, 0x1

    .line 413
    :cond_1
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 414
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 418
    :cond_2
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 419
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 423
    :cond_3
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_4

    .line 424
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 425
    add-int/lit8 v4, v4, 0x1

    .line 428
    :cond_4
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_5

    .line 429
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v8, v4

    aget v8, p2, v8

    iput v8, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 430
    add-int/lit8 v4, v4, 0x1

    .line 433
    :cond_5
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 435
    shl-int/lit8 v7, v3, 0x3

    .line 436
    .local v7, "thisJointIdx":I
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v9, p0, v3

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    aput-object v9, v8, v3

    .line 437
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget-object v9, p0, v3

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    int-to-float v9, v9

    aput v9, v8, v7

    .line 439
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    if-gez v8, :cond_6

    .line 440
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x1

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v10, v8, v9

    .line 441
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x2

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v10, v8, v9

    .line 442
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x3

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v10, v8, v9

    .line 444
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x4

    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v10, v8, v9

    .line 445
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x5

    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v10, v8, v9

    .line 446
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x6

    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v10, v8, v9

    .line 447
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x7

    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v10, v8, v9

    .line 394
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 449
    :cond_6
    aget-object v8, p0, v3

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    shl-int/lit8 v5, v8, 0x3

    .line 450
    .local v5, "parentJointIdx":I
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 451
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 452
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x3

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 454
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x4

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 455
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x5

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 456
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x6

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 457
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v5, 0x7

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 459
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 460
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x1

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 461
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x2

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 462
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x3

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 464
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 465
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->normalize()V

    .line 466
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v10, v8, v9

    .line 467
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x5

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v10, v8, v9

    .line 468
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x6

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v10, v8, v9

    .line 469
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v7, 0x7

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v10, v8, v9

    goto/16 :goto_1

    .line 472
    .end local v0    # "animatedOrient":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
    .end local v1    # "animatedPos":Lcom/badlogic/gdx/math/Vector3;
    .end local v2    # "baseJoint":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    .end local v4    # "j":I
    .end local v5    # "parentJointIdx":I
    .end local v7    # "thisJointIdx":I
    :cond_7
    return-void
.end method

.method public static loadAnimation(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .locals 24
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 195
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v19, "reader":Ljava/io/BufferedReader;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v20, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;-><init>()V

    .line 201
    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    const/4 v14, 0x0

    .line 202
    .local v14, "jointInfos":[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;
    const/4 v4, 0x0

    .line 203
    .local v4, "baseFrame":[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    const/4 v2, 0x0

    .line 205
    .local v2, "animFrameData":[F
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 206
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 207
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_0

    .line 209
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "MD5Version"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 210
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "10"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 211
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not a valid MD5 animation file, version is "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ", expected 10"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v15    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 329
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const/4 v3, 0x0

    .end local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object v3

    .line 215
    .restart local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    :try_start_1
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "numFrames"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 216
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 217
    .local v17, "numFrames":I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 218
    move/from16 v0, v17

    new-array v0, v0, [Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 221
    .end local v17    # "numFrames":I
    :cond_3
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "numJoints"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 222
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 223
    .local v18, "numJoints":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 224
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    new-instance v22, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    aput-object v22, v21, v9

    .line 225
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 226
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    .line 227
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    mul-int/lit8 v22, v18, 0x8

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 223
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 230
    :cond_4
    move/from16 v0, v18

    new-array v14, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    .line 231
    move/from16 v0, v18

    new-array v4, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    .line 234
    .end local v9    # "i":I
    .end local v18    # "numJoints":I
    :cond_5
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "frameRate"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 235
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 236
    .local v8, "frameRate":I
    iput v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    .line 237
    const/high16 v21, 0x3f800000    # 1.0f

    int-to-float v0, v8

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    .line 240
    .end local v8    # "frameRate":I
    :cond_6
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "numAnimatedComponents"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 241
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 242
    .local v16, "numAnimatedComponents":I
    move/from16 v0, v16

    new-array v2, v0, [F

    .line 245
    .end local v16    # "numAnimatedComponents":I
    :cond_7
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "hierarchy"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 246
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 247
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 248
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 249
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "//"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 250
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 246
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 254
    :cond_9
    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;-><init>()V

    .line 255
    .local v13, "jointInfo":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    .line 256
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    .line 257
    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    .line 258
    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    .line 260
    aput-object v13, v14, v9

    goto :goto_3

    .line 264
    .end local v9    # "i":I
    .end local v13    # "jointInfo":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;
    :cond_a
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "bounds"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 265
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_c

    .line 266
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 267
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 268
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_b

    .line 269
    add-int/lit8 v9, v9, -0x1

    .line 265
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 273
    :cond_b
    new-instance v5, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 274
    .local v5, "bounds":Lcom/badlogic/gdx/math/collision/BoundingBox;
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 275
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 276
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 278
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 279
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x7

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 280
    iget-object v0, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x8

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 282
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-object/from16 v21, v0

    aput-object v5, v21, v9

    goto/16 :goto_5

    .line 286
    .end local v5    # "bounds":Lcom/badlogic/gdx/math/collision/BoundingBox;
    .end local v9    # "i":I
    :cond_c
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "baseframe"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 287
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_e

    .line 288
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 289
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 290
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_d

    .line 291
    add-int/lit8 v9, v9, -0x1

    .line 287
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 295
    :cond_d
    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    invoke-direct {v12}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;-><init>()V

    .line 296
    .local v12, "joint":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 297
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 298
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v22, v0

    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 300
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v22, v0

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 301
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v22, v0

    const/16 v21, 0x7

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 302
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v22, v0

    const/16 v21, 0x8

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 303
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 305
    aput-object v12, v4, v9

    goto/16 :goto_7

    .line 309
    .end local v9    # "i":I
    .end local v12    # "joint":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
    :cond_e
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "frame"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 310
    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 312
    .local v7, "frameIndex":I
    const/4 v9, 0x0

    .line 313
    .restart local v9    # "i":I
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 314
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 315
    :goto_8
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "}"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 316
    const/4 v11, 0x0

    .local v11, "j":I
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_f

    .line 317
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v21

    aput v21, v2, v10

    .line 316
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_9

    .line 319
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 320
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_8

    .line 323
    .end local v11    # "j":I
    :cond_10
    invoke-static {v14, v4, v2, v3, v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static loadModel(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    .locals 27
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "allocateNormals"    # Z

    .prologue
    .line 35
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v25, 0x400

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 36
    .local v18, "reader":Ljava/io/BufferedReader;
    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;-><init>()V

    .line 37
    .local v14, "model":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    new-instance v19, Ljava/util/ArrayList;

    const/16 v24, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v19, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    .line 40
    .local v17, "quat":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
    const/4 v6, 0x4

    .line 41
    .local v6, "floatsPerVert":I
    if-eqz p1, :cond_0

    add-int/lit8 v6, v6, 0x3

    .line 43
    :cond_0
    const/4 v7, 0x5

    .line 44
    .local v7, "floatsPerWeight":I
    if-eqz p1, :cond_1

    add-int/lit8 v7, v7, 0x3

    .line 48
    :cond_1
    const/4 v3, 0x0

    .local v3, "currMesh":I
    move v4, v3

    .line 50
    .end local v3    # "currMesh":I
    .local v4, "currMesh":I
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 51
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 52
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_2

    .line 57
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "MD5Version"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 58
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 59
    .local v21, "version":I
    const/16 v24, 0xa

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 60
    new-instance v24, Ljava/lang/IllegalArgumentException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Not a valid MD5 file, go version "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", need 10"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v12    # "line":Ljava/lang/String;
    .end local v21    # "version":I
    :catch_0
    move-exception v5

    move v3, v4

    .line 189
    .end local v4    # "currMesh":I
    .restart local v3    # "currMesh":I
    .local v5, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v14, 0x0

    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v14    # "model":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    :goto_2
    return-object v14

    .line 66
    .end local v3    # "currMesh":I
    .restart local v4    # "currMesh":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "model":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    :cond_3
    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "numJoints"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 67
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 68
    .local v15, "numJoints":I
    new-instance v24, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 69
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    .line 70
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 71
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    mul-int/lit8 v25, v15, 0x8

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 77
    .end local v15    # "numJoints":I
    :cond_4
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "numMeshes"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 78
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 79
    .local v16, "numMeshes":I
    move/from16 v0, v16

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    .line 85
    .end local v16    # "numMeshes":I
    :cond_5
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "joints"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 86
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_7

    .line 87
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 88
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_6

    .line 90
    add-int/lit8 v8, v8, -0x1

    .line 86
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 94
    :cond_6
    shl-int/lit8 v11, v8, 0x3

    .line 95
    .local v11, "jointIdx":I
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    aput-object v24, v25, v8

    .line 97
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v25, v0

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v25, v11

    .line 99
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x1

    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v26

    .line 100
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v26

    .line 101
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    const/16 v24, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v26

    .line 103
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 104
    const/16 v24, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 105
    const/16 v24, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 106
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 108
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v11, 0x4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 109
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v11, 0x5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 110
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v11, 0x6

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 111
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v11, 0x7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    move/from16 v26, v0

    aput v26, v24, v25

    goto/16 :goto_4

    .line 118
    .end local v8    # "i":I
    .end local v11    # "jointIdx":I
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "mesh"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "{"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 119
    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;-><init>()V

    .line 120
    .local v13, "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    iput v6, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    .line 121
    iput v7, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    .line 123
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    move-object/from16 v24, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "currMesh":I
    .restart local v3    # "currMesh":I
    :try_start_2
    aput-object v13, v24, v4

    .line 125
    const/16 v22, 0x0

    .line 126
    .local v22, "vertIndex":I
    const/16 v20, 0x0

    .line 127
    .local v20, "triIndex":I
    const/16 v23, 0x0

    .line 129
    .local v23, "weightIndex":I
    :cond_8
    :goto_5
    const-string v24, "}"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 130
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 131
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_8

    .line 134
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "shader"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 135
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    .line 137
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "numverts"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 138
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    .line 139
    iget v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    move/from16 v24, v0

    mul-int v24, v24, v6

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    .line 141
    :cond_a
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "numtris"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 142
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v24

    mul-int/lit8 v24, v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [S

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    .line 143
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x3

    move/from16 v0, v24

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    .line 145
    :cond_b
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "numweights"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 146
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    .line 147
    iget v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    .line 149
    :cond_c
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "vert"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 150
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 152
    mul-int v9, v22, v6

    .line 153
    .local v9, "idx":I
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v9

    .line 154
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v25, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v10

    .line 155
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v9

    .line 156
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v25, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v24, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v10

    .line 157
    if-eqz p1, :cond_d

    .line 158
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v24, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v25, 0x0

    aput v25, v24, v9

    .line 159
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v24, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v25, 0x0

    aput v25, v24, v10

    .line 160
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    move-object/from16 v24, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v25, 0x0

    aput v25, v24, v9

    .line 163
    .end local v10    # "idx":I
    :cond_d
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "tri"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 164
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 166
    mul-int/lit8 v9, v20, 0x3

    .line 167
    .restart local v9    # "idx":I
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v24

    aput-short v24, v25, v9

    .line 168
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    move-object/from16 v25, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v24

    aput-short v24, v25, v10

    .line 169
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v24

    aput-short v24, v25, v9

    .line 172
    .end local v10    # "idx":I
    :cond_e
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, "weight"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 173
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 175
    mul-int v9, v23, v7

    .line 176
    .restart local v9    # "idx":I
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v25, v9

    .line 177
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move-object/from16 v25, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v10

    .line 178
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v9

    .line 179
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move-object/from16 v25, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v24, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v10

    .line 180
    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/16 v24, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v24

    aput v24, v25, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 188
    .end local v10    # "idx":I
    .end local v20    # "triIndex":I
    .end local v22    # "vertIndex":I
    .end local v23    # "weightIndex":I
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .restart local v20    # "triIndex":I
    .restart local v22    # "vertIndex":I
    .restart local v23    # "weightIndex":I
    :cond_f
    move v4, v3

    .line 184
    .end local v3    # "currMesh":I
    .restart local v4    # "currMesh":I
    goto/16 :goto_0

    .end local v13    # "mesh":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
    .end local v20    # "triIndex":I
    .end local v22    # "vertIndex":I
    .end local v23    # "weightIndex":I
    :cond_10
    move v3, v4

    .line 187
    .end local v4    # "currMesh":I
    .restart local v3    # "currMesh":I
    goto/16 :goto_2
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 15
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "front":F
    const/4 v0, 0x0

    .line 341
    .local v0, "back":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 342
    .local v8, "sign":F
    const/4 v6, 0x0

    .line 343
    .local v6, "isBack":Z
    const/4 v2, 0x1

    .line 344
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 345
    .local v7, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_0
    if-ge v5, v7, :cond_5

    .line 346
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v10, 0x2d

    if-ne v1, v10, :cond_0

    .line 348
    const/high16 v8, -0x40800000    # -1.0f

    move v2, v3

    .line 345
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    .line 351
    :cond_0
    const/16 v10, 0x2b

    if-ne v1, v10, :cond_1

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 352
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_1
    const/16 v10, 0x2e

    if-eq v1, v10, :cond_2

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_3

    .line 353
    :cond_2
    const/4 v6, 0x1

    move v2, v3

    .line 354
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 357
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    add-int/lit8 v10, v1, -0x30

    int-to-float v9, v10

    .line 358
    .local v9, "val":F
    if-nez v6, :cond_4

    .line 359
    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v4

    add-float v4, v10, v9

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 361
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    int-to-double v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, v9

    add-float/2addr v0, v10

    goto :goto_1

    .line 364
    .end local v1    # "c":C
    .end local v2    # "count":I
    .end local v9    # "val":F
    .restart local v3    # "count":I
    :cond_5
    add-float v10, v4, v0

    mul-float/2addr v10, v8

    return v10
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "front":I
    const/4 v4, 0x1

    .line 371
    .local v4, "sign":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 372
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 373
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 374
    .local v0, "c":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_1

    .line 375
    const/4 v4, -0x1

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    .line 379
    const/16 v6, 0x2e

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_3

    .line 387
    .end local v0    # "c":C
    :cond_2
    mul-int v6, v4, v1

    return v6

    .line 383
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v5, v0, -0x30

    .line 384
    .local v5, "val":I
    mul-int/lit8 v6, v1, 0xa

    add-int v1, v6, v5

    goto :goto_1
.end method

.method private static tokenize(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 476
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method
