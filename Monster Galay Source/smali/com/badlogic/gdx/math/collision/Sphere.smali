.class public Lcom/badlogic/gdx/math/collision/Sphere;
.super Ljava/lang/Object;
.source "Sphere.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a07a682c996587cL


# instance fields
.field public final center:Lcom/badlogic/gdx/math/Vector3;

.field public radius:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    .line 39
    return-void
.end method


# virtual methods
.method public overlaps(Lcom/badlogic/gdx/math/collision/Sphere;)Z
    .locals 4
    .param p1, "sphere"    # Lcom/badlogic/gdx/math/collision/Sphere;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
