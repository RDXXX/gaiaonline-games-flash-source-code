.class public abstract Lcom/badlogic/gdx/graphics/g3d/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/Animator$1;,
        Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
    }
.end annotation


# instance fields
.field protected mAnimLen:F

.field protected mAnimPos:F

.field protected mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

.field protected mCurrentFrameIdx:I

.field protected mFrameDelta:F

.field protected mNextFrameIdx:I

.field protected mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    .line 25
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    .line 26
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .line 27
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    .line 28
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    .line 29
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    .line 32
    return-void
.end method


# virtual methods
.method public getCurrentAnimation()Lcom/badlogic/gdx/graphics/g3d/Animation;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    return-object v0
.end method

.method public getCurrentWrapMode()Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    return-object v0
.end method

.method protected abstract interpolate()V
.end method

.method public setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/Animation;
    .param p2, "mode"    # Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .prologue
    const/4 v1, -0x1

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    .line 43
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    .line 46
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    .line 47
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Animation;->getLength()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    .line 52
    :cond_0
    return-void
.end method

.method protected abstract setInterpolationFrames()V
.end method

.method public update(F)V
    .locals 6
    .param p1, "dt"    # F

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-eq v3, v4, :cond_0

    .line 71
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    .line 72
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v3, v4, :cond_3

    .line 74
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    .line 81
    :cond_0
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    div-float v0, v3, v4

    .line 82
    .local v0, "animPos":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/Animation;->getNumFrames()I

    move-result v2

    .line 84
    .local v2, "numFrames":I
    add-int/lit8 v3, v2, -0x1

    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 86
    .local v1, "currentFrameIdx":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    if-eq v1, v3, :cond_1

    .line 87
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_4

    .line 88
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    .line 101
    :goto_1
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    .line 102
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    .line 105
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;->setInterpolationFrames()V

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;->interpolate()V

    .line 111
    .end local v0    # "animPos":F
    .end local v1    # "currentFrameIdx":I
    .end local v2    # "numFrames":I
    :cond_2
    return-void

    .line 75
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v3, v4, :cond_0

    .line 76
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    goto :goto_0

    .line 90
    .restart local v0    # "animPos":F
    .restart local v1    # "currentFrameIdx":I
    .restart local v2    # "numFrames":I
    :cond_4
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/Animator$1;->$SwitchMap$com$badlogic$gdx$graphics$g3d$Animator$WrapMode:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 93
    :pswitch_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    goto :goto_1

    .line 96
    :pswitch_1
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
