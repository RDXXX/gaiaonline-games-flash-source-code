.class public Lcom/badlogic/gdx/math/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Plane$PlaneSide;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1137ae7f04ef89daL


# instance fields
.field public d:F

.field public final normal:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "d"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "point3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 64
    return-void
.end method


# virtual methods
.method public distance(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getD()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return v0
.end method

.method public getNormal()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public isFrontFacing(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 122
    .local v0, "dot":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F
    .param p4, "d"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    iput p4, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 89
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Plane;)V
    .locals 2
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 149
    iget v0, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 150
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 142
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "point3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 74
    .local v0, "l":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->tmp2()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 75
    .local v2, "r":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 76
    .local v1, "nor":Lcom/badlogic/gdx/math/Vector3;
    iget-object v3, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 78
    return-void
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 4
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float v0, v1, v2

    .line 107
    .local v0, "dist":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    .line 112
    :goto_0
    return-object v1

    .line 109
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 110
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
