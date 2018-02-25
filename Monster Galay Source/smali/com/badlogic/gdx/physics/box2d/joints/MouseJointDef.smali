.class public Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "MouseJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public maxForce:F

.field public final target:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->maxForce:F

    .line 36
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->frequencyHz:F

    .line 39
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->dampingRatio:F

    .line 25
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 26
    return-void
.end method
