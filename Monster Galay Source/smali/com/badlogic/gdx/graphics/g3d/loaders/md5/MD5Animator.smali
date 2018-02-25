.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;
.super Lcom/badlogic/gdx/graphics/g3d/Animator;
.source "MD5Animator.java"


# instance fields
.field protected mCurrentFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

.field protected mNextFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

.field protected mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 28
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mNextFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 29
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    return-void
.end method


# virtual methods
.method public getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    return-object v0
.end method

.method protected interpolate()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mNextFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mFrameDelta:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->interpolate(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;F)V

    .line 68
    return-void
.end method

.method public setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/Animation;
    .param p2, "wrapMode"    # Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Animator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    .end local p1    # "anim":Lcom/badlogic/gdx/graphics/g3d/Animation;
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mNextFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 57
    :cond_0
    return-void
.end method

.method protected setInterpolationFrames()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mNextFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mNextFrame:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 63
    return-void
.end method

.method public setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V
    .locals 0
    .param p1, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->mSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 35
    return-void
.end method
