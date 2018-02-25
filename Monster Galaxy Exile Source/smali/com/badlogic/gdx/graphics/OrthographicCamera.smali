.class public Lcom/badlogic/gdx/graphics/OrthographicCamera;
.super Lcom/badlogic/gdx/graphics/Camera;
.source "OrthographicCamera.java"


# instance fields
.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 32
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    iput p1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 41
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 44
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F
    .param p3, "diamondAngle"    # F

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 54
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 56
    const v0, 0x322bcc77    # 1.0E-8f

    const/16 v1, 0x14

    invoke-virtual {p0, p3, v0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->findDirectionForIsoView(FFI)V

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 58
    return-void
.end method

.method private calculateAngle(F)F
    .locals 7
    .param p1, "a"    # F

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 85
    .local v0, "camPos":Lcom/badlogic/gdx/math/Vector3;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 86
    invoke-virtual {p0, v6, v6, v6}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->lookAt(FFF)V

    .line 87
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->normalizeUp()V

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 90
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2, v6, v6, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 91
    .local v2, "orig":Lcom/badlogic/gdx/math/Vector3;
    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 92
    .local v3, "vec":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 94
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 95
    .local v1, "d":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->angle()F

    move-result v4

    return v4
.end method

.method private calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "angle"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 99
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 100
    .local v2, "transform":Lcom/badlogic/gdx/math/Matrix4;
    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v4, v6, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 101
    .local v0, "dir":Lcom/badlogic/gdx/math/Vector3;
    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 102
    .local v1, "rotAngle":F
    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v5, v6, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 103
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 104
    return-object v0
.end method


# virtual methods
.method public findDirectionForIsoView(FFI)V
    .locals 9
    .param p1, "targetAngle"    # F
    .param p2, "epsilon"    # F
    .param p3, "maxIterations"    # I

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    .line 61
    sub-float v5, p1, v6

    .line 62
    .local v5, "start":F
    add-float v1, p1, v6

    .line 63
    .local v1, "end":F
    move v4, p1

    .line 65
    .local v4, "mid":F
    const/4 v2, 0x0

    .line 66
    .local v2, "iterations":I
    const/4 v0, 0x0

    .line 67
    .local v0, "aMid":F
    :goto_0
    sub-float v6, p1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "iterations":I
    .local v3, "iterations":I
    if-ge v2, p3, :cond_1

    .line 68
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateAngle(F)F

    move-result v0

    .line 70
    cmpg-float v6, p1, v0

    if-gez v6, :cond_0

    .line 71
    move v1, v4

    .line 75
    :goto_1
    sub-float v6, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v4, v5, v6

    move v2, v3

    .end local v3    # "iterations":I
    .restart local v2    # "iterations":I
    goto :goto_0

    .line 73
    .end local v2    # "iterations":I
    .restart local v3    # "iterations":I
    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 77
    .end local v3    # "iterations":I
    .restart local v2    # "iterations":I
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 78
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v7, v7

    iput v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 79
    invoke-virtual {p0, v8, v8, v8}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->lookAt(FFF)V

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->normalizeUp()V

    .line 81
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    neg-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->far:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Frustum;->update(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 119
    return-void
.end method
