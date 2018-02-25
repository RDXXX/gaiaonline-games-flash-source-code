.class public Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "RevoluteJointDef.java"


# instance fields
.field public enableLimit:Z

.field public enableMotor:Z

.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public lowerAngle:F

.field public maxMotorTorque:F

.field public motorSpeed:F

.field public referenceAngle:F

.field public upperAngle:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    .line 52
    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    .line 55
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    .line 58
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 61
    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    .line 64
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->motorSpeed:F

    .line 67
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 30
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 31
    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "bodyA"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "bodyB"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p3, "anchor"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 36
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 39
    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    .line 40
    return-void
.end method
