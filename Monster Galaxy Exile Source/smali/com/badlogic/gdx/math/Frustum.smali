.class public Lcom/badlogic/gdx/math/Frustum;
.super Ljava/lang/Object;
.source "Frustum.java"


# static fields
.field protected static final clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected static final clipSpacePlanePointsArray:[F


# instance fields
.field public final planePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected final planePointsArray:[F

.field public final planes:[Lcom/badlogic/gdx/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 25
    const/16 v6, 0x8

    new-array v6, v6, [Lcom/badlogic/gdx/math/Vector3;

    const/4 v7, 0x0

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v9, v9, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v10, v9, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v10, v10, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v9, v10, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v9, v9, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v10, v9, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x6

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v10, v10, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v9, v10, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v8, v6, v7

    sput-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 28
    const/16 v6, 0x18

    new-array v6, v6, [F

    sput-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "j":I
    sget-object v0, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

    .local v0, "arr$":[Lcom/badlogic/gdx/math/Vector3;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 33
    .local v5, "v":Lcom/badlogic/gdx/math/Vector3;
    sget-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v7, v6, v3

    .line 34
    sget-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v7, v6, v2

    .line 35
    sget-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v7, v6, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 37
    .end local v5    # "v":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v1, v5, [Lcom/badlogic/gdx/math/Plane;

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    .line 43
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v5

    const/4 v2, 0x7

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 45
    const/16 v1, 0x18

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    new-instance v2, Lcom/badlogic/gdx/math/Plane;

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public boundsInFrustum(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 8
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorners()[Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 117
    .local v0, "corners":[Lcom/badlogic/gdx/math/Vector3;
    array-length v3, v0

    .line 119
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v4, v6

    .local v4, "len2":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 120
    const/4 v5, 0x0

    .line 122
    .local v5, "out":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 123
    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v6, v6, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v6, v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 122
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    const/4 v6, 0x0

    .line 128
    .end local v2    # "j":I
    .end local v5    # "out":I
    :goto_2
    return v6

    .line 119
    .restart local v2    # "j":I
    .restart local v5    # "out":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "j":I
    .end local v5    # "out":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v1

    .line 81
    .local v1, "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    .line 84
    .end local v1    # "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    :goto_1
    return v2

    .line 79
    .restart local v1    # "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public sphereInFrustum(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Plane;->distance(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    neg-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 96
    :goto_1
    return v1

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public sphereInFrustumWithoutNearFar(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Plane;->distance(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    neg-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 108
    :goto_1
    return v1

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public update(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 14
    .param p1, "inverseProjectionView"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 57
    sget-object v4, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    sget-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    array-length v6, v6

    invoke-static {v4, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    const/16 v6, 0x8

    invoke-static {v4, v5, v9, v6, v11}, Lcom/badlogic/gdx/math/Matrix4;->prj([F[FIII)V

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v4, v0

    .line 61
    .local v3, "v":Lcom/badlogic/gdx/math/Vector3;
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, v4, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 62
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v4, v4, v1

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 63
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, v4, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 59
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 66
    .end local v3    # "v":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v13

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 67
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 68
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 69
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 70
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v13

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 71
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v10

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 72
    return-void
.end method
