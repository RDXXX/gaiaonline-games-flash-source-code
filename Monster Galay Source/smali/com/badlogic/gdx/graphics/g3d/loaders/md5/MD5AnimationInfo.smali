.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;
.super Ljava/lang/Object;
.source "MD5AnimationInfo.java"


# instance fields
.field currFrame:I

.field lastTime:F

.field maxFrame:I

.field maxTime:F

.field nextFrame:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1
    .param p1, "maxFrame"    # I
    .param p2, "maxTime"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    .line 28
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    .line 29
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    .line 30
    return-void
.end method


# virtual methods
.method public getCurrentFrame()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    return v0
.end method

.method public getInterpolation()F
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getNextFrame()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->reset(IF)V

    .line 34
    return-void
.end method

.method public reset(IF)V
    .locals 1
    .param p1, "maxFrame"    # I
    .param p2, "maxTime"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    .line 42
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    const/4 v2, 0x0

    .line 45
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    .line 47
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 48
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    .line 53
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    .line 55
    :cond_1
    return-void
.end method
