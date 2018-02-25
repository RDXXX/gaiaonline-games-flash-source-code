.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
.source "Grid3DWaves.java"


# static fields
.field private static final AMPLITUDE_RATE:F = 1.0f


# instance fields
.field amplitude:F

.field horizontal:Z

.field private totalTime:F

.field vertical:Z

.field waves:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->totalTime:F

    .line 6
    return-void
.end method


# virtual methods
.method protected updateVertices(F)V
    .locals 11
    .param p1, "deltaTime"    # F

    .prologue
    const v10, 0x40490fdb    # (float)Math.PI

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3c23d70a    # 0.01f

    .line 19
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->totalTime:F

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, p1, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->totalTime:F

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->gridSizeX:I

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_0

    .line 39
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->gridSizeY:I

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_1

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->getOriginalVertex(II)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 24
    .local v2, "v":Lcom/badlogic/gdx/math/Vector3;
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->vertical:Z

    if-eqz v3, :cond_2

    .line 25
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->totalTime:F

    .line 26
    mul-float/2addr v4, v10

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->waves:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->offsetY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 25
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v4

    .line 27
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->amplitude:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 25
    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 30
    :cond_2
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->horizontal:Z

    if-eqz v3, :cond_3

    .line 31
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->totalTime:F

    .line 32
    mul-float/2addr v4, v10

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->waves:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->offsetX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 31
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v4

    .line 33
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->amplitude:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 31
    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 36
    :cond_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->setVertex(IILcom/badlogic/gdx/math/Vector3;)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
