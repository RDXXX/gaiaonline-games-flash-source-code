.class public Lcom/badlogic/gdx/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f909a54ea199076L


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 37
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 38
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 39
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 46
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 47
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 49
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 6
    .param p1, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 98
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 99
    .local v1, "xmin":F
    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v1, v4

    .line 101
    .local v0, "xmax":F
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 102
    .local v3, "ymin":F
    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v2, v3, v4

    .line 104
    .local v2, "ymax":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return v0
.end method

.method public merge(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 7
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 142
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 143
    .local v2, "minX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 144
    .local v0, "maxX":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 145
    sub-float v4, v0, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 147
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 148
    .local v3, "minY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 149
    .local v1, "maxY":F
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 150
    sub-float v4, v1, v3

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 151
    return-void
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p1, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 116
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 117
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 118
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 119
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 131
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 132
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 133
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 134
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 135
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 93
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 82
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 60
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
