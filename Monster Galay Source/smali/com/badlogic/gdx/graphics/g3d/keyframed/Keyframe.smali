.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# instance fields
.field public indices:[[S

.field public indicesSent:Z

.field public indicesSet:Z

.field public taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

.field public taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

.field public vertices:[[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 26
    check-cast v0, [[F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object v0, v1

    .line 27
    check-cast v0, [[S

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    .line 28
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    .line 29
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    .line 31
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    .line 32
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method
