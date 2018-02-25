.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
.source "Grid3DShaky.java"


# instance fields
.field randrange:I

.field shakeZ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVertices(F)V
    .locals 11
    .param p1, "deltaTime"    # F

    .prologue
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->gridSizeX:I

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_0

    .line 26
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->gridSizeY:I

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_1

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->getOriginalVertex(II)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 17
    .local v2, "v":Lcom/badlogic/gdx/math/Vector3;
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double/2addr v5, v9

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->randrange:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 18
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double/2addr v5, v9

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->randrange:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 19
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->shakeZ:Z

    if-eqz v3, :cond_2

    .line 20
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->randrange:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 23
    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->setVertex(IILcom/badlogic/gdx/math/Vector3;)V

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
