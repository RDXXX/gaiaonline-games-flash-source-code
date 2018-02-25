.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;
.super Lcom/badlogic/gdx/graphics/g3d/Animator;
.source "KeyframeAnimator.java"


# static fields
.field static jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion; = null

.field static jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion; = null

.field public static final sStride:I = 0x8


# instance fields
.field private A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private invSampleRate:F

.field private numMeshes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "numMeshes"    # I
    .param p2, "sampleRate"    # F

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 33
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 34
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    .line 48
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v1, p1, [[F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v1, p1, [[S

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    .line 54
    return-void
.end method

.method private interpolateJoints(F)V
    .locals 9
    .param p1, "t"    # F

    .prologue
    .line 145
    const/4 v6, 0x0

    .local v6, "tj":I
    :goto_0
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v0, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 148
    .local v0, "PAX":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v1, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 149
    .local v1, "PAY":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v2, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 150
    .local v2, "PAZ":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v3, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 151
    .local v3, "PBX":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v4, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 152
    .local v4, "PBY":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    iget v5, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 154
    .local v5, "PBZ":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    sub-float v8, v3, v0

    mul-float/2addr v8, p1

    add-float/2addr v8, v0

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 155
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    sub-float v8, v4, v1

    mul-float/2addr v8, p1

    add-float/2addr v8, v1

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 156
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v6

    sub-float v8, v5, v2

    mul-float/2addr v8, p1

    add-float/2addr v8, v2

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 159
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 160
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 161
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 162
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 163
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 164
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 165
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 166
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 167
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v7, v8, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V

    .line 168
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v7, v7, v6

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v8, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 169
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v7, v7, v6

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v8, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 170
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v7, v7, v6

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v8, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 171
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v7, v7, v6

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v8, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 173
    .end local v0    # "PAX":F
    .end local v1    # "PAY":F
    .end local v2    # "PAZ":F
    .end local v3    # "PBX":F
    .end local v4    # "PBY":F
    .end local v5    # "PBZ":F
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected interpolate()V
    .locals 19

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mFrameDelta:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    move/from16 v18, v0

    mul-float v16, v17, v18

    .line 91
    .local v16, "t":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v17, v0

    aget-object v10, v17, v14

    .line 93
    .local v10, "Rvertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v17, v0

    aget-object v2, v17, v14

    .line 94
    .local v2, "Avertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v17, v0

    aget-object v6, v17, v14

    .line 95
    .local v6, "Bvertices":[F
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_2
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 97
    aget v3, v2, v15

    .line 98
    .local v3, "Ax":F
    aget v7, v6, v15

    .line 99
    .local v7, "Bx":F
    sub-float v17, v7, v3

    mul-float v17, v17, v16

    add-float v11, v3, v17

    .line 100
    .local v11, "Rx":F
    add-int/lit8 v17, v15, 0x1

    aget v4, v2, v17

    .line 101
    .local v4, "Ay":F
    add-int/lit8 v17, v15, 0x1

    aget v8, v6, v17

    .line 102
    .local v8, "By":F
    sub-float v17, v8, v4

    mul-float v17, v17, v16

    add-float v12, v4, v17

    .line 103
    .local v12, "Ry":F
    add-int/lit8 v17, v15, 0x2

    aget v5, v2, v17

    .line 104
    .local v5, "Az":F
    add-int/lit8 v17, v15, 0x2

    aget v9, v6, v17

    .line 105
    .local v9, "Bz":F
    sub-float v17, v9, v5

    mul-float v17, v17, v16

    add-float v13, v5, v17

    .line 107
    .local v13, "Rz":F
    aput v11, v10, v15

    .line 108
    add-int/lit8 v17, v15, 0x1

    aput v12, v10, v17

    .line 109
    add-int/lit8 v17, v15, 0x2

    aput v13, v10, v17

    .line 112
    add-int/lit8 v17, v15, 0x3

    add-int/lit8 v18, v15, 0x3

    aget v18, v2, v18

    aput v18, v10, v17

    .line 113
    add-int/lit8 v17, v15, 0x4

    add-int/lit8 v18, v15, 0x4

    aget v18, v2, v18

    aput v18, v10, v17

    .line 116
    add-int/lit8 v17, v15, 0x5

    aget v3, v2, v17

    .line 117
    add-int/lit8 v17, v15, 0x5

    aget v7, v6, v17

    .line 118
    sub-float v17, v7, v3

    mul-float v17, v17, v16

    add-float v11, v3, v17

    .line 119
    add-int/lit8 v17, v15, 0x6

    aget v4, v2, v17

    .line 120
    add-int/lit8 v17, v15, 0x6

    aget v8, v6, v17

    .line 121
    sub-float v17, v8, v4

    mul-float v17, v17, v16

    add-float v12, v4, v17

    .line 122
    add-int/lit8 v17, v15, 0x7

    aget v5, v2, v17

    .line 123
    add-int/lit8 v17, v15, 0x7

    aget v9, v6, v17

    .line 124
    sub-float v17, v9, v5

    mul-float v17, v17, v16

    add-float v13, v5, v17

    .line 125
    add-int/lit8 v17, v15, 0x5

    aput v11, v10, v17

    .line 126
    add-int/lit8 v17, v15, 0x6

    aput v12, v10, v17

    .line 127
    add-int/lit8 v17, v15, 0x7

    aput v13, v10, v17

    .line 95
    add-int/lit8 v15, v15, 0x8

    goto :goto_2

    .line 130
    .end local v3    # "Ax":F
    .end local v4    # "Ay":F
    .end local v5    # "Az":F
    .end local v7    # "Bx":F
    .end local v8    # "By":F
    .end local v9    # "Bz":F
    .end local v11    # "Rx":F
    .end local v12    # "Ry":F
    .end local v13    # "Rz":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 131
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v17, v0

    aget-object v17, v17, v14

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v17, v0

    aget-object v17, v17, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v14

    aget-short v18, v18, v15

    aput-short v18, v17, v15

    .line 131
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 91
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 136
    .end local v2    # "Avertices":[F
    .end local v6    # "Bvertices":[F
    .end local v10    # "Rvertices":[F
    .end local v15    # "n":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 139
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->interpolateJoints(F)V

    goto/16 :goto_0
.end method

.method protected setInterpolationFrames()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mNextFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .line 81
    return-void
.end method

.method public setKeyframeDimensions(III)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "numVertices"    # I
    .param p3, "numIndices"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    new-array v1, p2, [F

    aput-object v1, v0, p1

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    new-array v1, p3, [S

    aput-object v1, v0, p1

    .line 63
    return-void
.end method

.method public setNumTaggedJoints(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v2, p1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v2, p1, [Lcom/badlogic/gdx/math/Quaternion;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    .line 73
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    new-instance v2, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method
