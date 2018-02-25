.class public Lcom/badlogic/gdx/math/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 26
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 27
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 32
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 33
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 34
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 37
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float p1, v0, p1

    .line 38
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float p2, v0, p2

    .line 39
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 5
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 43
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 44
    .local v0, "x":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 45
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
