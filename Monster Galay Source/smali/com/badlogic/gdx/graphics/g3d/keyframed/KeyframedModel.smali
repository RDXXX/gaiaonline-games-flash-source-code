.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;
.super Ljava/lang/Object;
.source "KeyframedModel.java"


# static fields
.field private static animations:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animationRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

.field private assetName:Ljava/lang/String;

.field private materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

.field private numMeshes:I

.field private taggedJointNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private target:[Lcom/badlogic/gdx/graphics/Mesh;

.field private visible:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    .line 48
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 49
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    .prologue
    .line 283
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    .line 285
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->removeRef()I

    move-result v6

    if-nez v6, :cond_0

    .line 287
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v0    # "anim":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/Mesh;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    .line 291
    .local v5, "m":Lcom/badlogic/gdx/graphics/Mesh;
    if-eqz v5, :cond_2

    .line 292
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 290
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    .end local v5    # "m":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_3
    return-void
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 3
    .param p1, "animKey"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    return-object v0
.end method

.method public getAnimator()Lcom/badlogic/gdx/graphics/g3d/Animator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    return-object v0
.end method

.method public getJointData(ILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 2
    .param p1, "tagIndex"    # I
    .param p2, "pos"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "orient"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    .line 207
    .local v0, "kf":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 208
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 209
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 210
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 211
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 212
    return-void
.end method

.method public render()V
    .locals 6

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-ge v0, v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v1, v2, v0

    .line 265
    .local v1, "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    if-eqz v1, :cond_1

    .line 266
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/TextureRef;->bind()V

    .line 269
    :cond_0
    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(I)V

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_3
    return-void
.end method

.method public sampleAnimationFromMD5(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;FLjava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 34
    .param p1, "md5model"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    .param p2, "md5renderer"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;
    .param p3, "md5animator"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;
    .param p4, "md5animation"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .param p5, "sampleRate"    # F
    .param p6, "modelAsset"    # Ljava/lang/String;
    .param p7, "animKey"    # Ljava/lang/String;

    .prologue
    .line 88
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    .line 90
    const/4 v7, 0x0

    .line 92
    .local v7, "cached":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 93
    new-instance v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;-><init>(IF)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 95
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Z

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    .line 96
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v8, v0, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput-boolean v32, v31, v8

    .line 96
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 101
    .end local v8    # "i":I
    :cond_0
    sget-object v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v31, :cond_1

    .line 102
    new-instance v31, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct/range {v31 .. v31}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 104
    :cond_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 107
    .local v5, "a":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    sget-object v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 108
    sget-object v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "a":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    .line 109
    .restart local v5    # "a":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->addRef()V

    .line 110
    const/4 v7, 0x1

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v31, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    .line 116
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    move/from16 v32, v0

    mul-float v14, v31, v32

    .line 117
    .local v14, "len":F
    div-float v31, v14, p5

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v18, v31, 0x1

    .line 119
    .local v18, "numSamples":I
    if-nez v7, :cond_3

    .line 120
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    .end local v5    # "a":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v18

    move/from16 v2, p5

    invoke-direct {v5, v0, v1, v14, v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;-><init>(Ljava/lang/String;IFF)V

    .line 121
    .restart local v5    # "a":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    sget-object v31, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    const v31, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    .line 127
    const/4 v8, 0x0

    .line 128
    .restart local v8    # "i":I
    const/16 v19, 0x0

    .local v19, "numVertices":I
    const/16 v17, 0x0

    .line 129
    .local v17, "numIndices":I
    const/16 v25, 0x0

    .local v25, "t":F
    :goto_1
    cmpg-float v31, v25, v14

    if-gez v31, :cond_c

    .line 131
    const/4 v12, 0x0

    .line 132
    .local v12, "k":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    if-nez v7, :cond_4

    .line 133
    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    .end local v12    # "k":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    invoke-direct {v12}, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;-><init>()V

    .line 134
    .restart local v12    # "k":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [[F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [[S

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    .line 141
    :cond_4
    const/4 v15, 0x0

    .local v15, "m":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v15, v0, :cond_7

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getVertices(I)[F

    move-result-object v27

    .line 143
    .local v27, "vertices":[F
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getIndices(I)[S

    move-result-object v10

    .line 144
    .local v10, "indices":[S
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v19, v0

    .line 145
    array-length v0, v10

    move/from16 v17, v0

    .line 146
    if-nez v7, :cond_5

    .line 147
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    aput-object v32, v31, v15

    .line 148
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v32, v0

    invoke-virtual/range {v27 .. v27}, [F->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [F

    aput-object v31, v32, v15

    .line 149
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v31, v0

    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [S

    move-object/from16 v32, v0

    aput-object v32, v31, v15

    .line 150
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v32, v0

    invoke-virtual {v10}, [S->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [S

    aput-object v31, v32, v15

    .line 153
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    if-nez v31, :cond_6

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setKeyframeDimensions(III)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setNumTaggedJoints(I)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getMesh()Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    .line 158
    .local v6, "attribs":Lcom/badlogic/gdx/graphics/VertexAttributes;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v31, v0

    new-instance v32, Lcom/badlogic/gdx/graphics/Mesh;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    aput-object v32, v31, v15

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    invoke-virtual/range {v31 .. v31}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v31

    div-int/lit8 v31, v31, 0x4

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 160
    new-instance v31, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v32, "Mesh vertexattributes != 8 - is this a valid MD5 source mesh?"

    invoke-direct/range {v31 .. v32}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 141
    .end local v6    # "attribs":Lcom/badlogic/gdx/graphics/VertexAttributes;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 164
    .end local v10    # "indices":[S
    .end local v27    # "vertices":[F
    :cond_7
    if-nez v7, :cond_b

    .line 166
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v24

    .line 167
    .local v24, "skel":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    const/16 v26, 0x0

    .local v26, "tj":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 169
    .local v16, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_8

    .line 170
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 171
    mul-int/lit8 v9, v11, 0x8

    .line 173
    .local v9, "idx":I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x1

    aget v28, v31, v32

    .line 174
    .local v28, "x":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x2

    aget v29, v31, v32

    .line 175
    .local v29, "y":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x3

    aget v30, v31, v32

    .line 176
    .local v30, "z":F
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v31, v0

    new-instance v32, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v32

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v32, v31, v26

    .line 177
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x4

    aget v21, v31, v32

    .line 178
    .local v21, "qx":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x5

    aget v22, v31, v32

    .line 179
    .local v22, "qy":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x6

    aget v23, v31, v32

    .line 180
    .local v23, "qz":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v31, v0

    add-int/lit8 v32, v9, 0x7

    aget v20, v31, v32

    .line 181
    .local v20, "qw":F
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v31, v0

    new-instance v32, Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    aput-object v32, v31, v26

    .line 167
    .end local v9    # "idx":I
    .end local v20    # "qw":F
    .end local v21    # "qx":F
    .end local v22    # "qy":F
    .end local v23    # "qz":F
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "z":F
    :cond_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 169
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 187
    .end local v11    # "j":I
    .end local v16    # "name":Ljava/lang/String;
    :cond_a
    iget-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-object/from16 v31, v0

    aput-object v12, v31, v8

    .line 189
    .end local v24    # "skel":Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .end local v26    # "tj":I
    :cond_b
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    .line 191
    add-int/lit8 v8, v8, 0x1

    .line 129
    add-float v25, v25, p5

    goto/16 :goto_1

    .line 194
    .end local v12    # "k":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    .end local v15    # "m":I
    :cond_c
    if-eqz v7, :cond_d

    .line 202
    :cond_d
    return-object v5
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 3
    .param p1, "animKey"    # Ljava/lang/String;
    .param p2, "wrapMode"    # Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    move-result-object v0

    .line 219
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    .line 221
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v1

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v1

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    .line 224
    :cond_0
    return-void
.end method

.method public setMaterials([Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 3
    .param p1, "mats"    # [Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 62
    array-length v1, p1

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public setMeshVisible(IZ)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aput-boolean p2, v0, p1

    .line 280
    return-void
.end method

.method public setTaggedJoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "joints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->update(F)V

    .line 239
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->hasAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v1

    .line 242
    .local v1, "ikf":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getCurrentWrapMode()Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-eqz v2, :cond_1

    .line 257
    .end local v1    # "ikf":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v1    # "ikf":Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-ge v0, v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 250
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-nez v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    goto :goto_0
.end method
