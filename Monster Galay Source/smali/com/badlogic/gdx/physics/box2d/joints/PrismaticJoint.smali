.class public Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "PrismaticJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 28
    return-void
.end method

.method private native jniEnableLimit(JZ)V
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetLowerLimit(J)F
.end method

.method private native jniGetMotorForce(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetUpperLimit(J)F
.end method

.method private native jniIsLimitEnabled(J)Z
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetLimits(JFF)V
.end method

.method private native jniSetMaxMotorForce(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniEnableLimit(JZ)V

    .line 54
    return-void
.end method

.method public enableMotor(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniEnableMotor(JZ)V

    .line 89
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit()F
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetLowerLimit(J)F

    move-result v0

    return v0
.end method

.method public getMotorForce()F
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getUpperLimit()F
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetUpperLimit(J)F

    move-result v0

    return v0
.end method

.method public isLimitEnabled()Z
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniIsLimitEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setLimits(FF)V
    .locals 2
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetLimits(JFF)V

    .line 75
    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 2
    .param p1, "force"    # F

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetMaxMotorForce(JF)V

    .line 110
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetMotorSpeed(JF)V

    .line 96
    return-void
.end method
