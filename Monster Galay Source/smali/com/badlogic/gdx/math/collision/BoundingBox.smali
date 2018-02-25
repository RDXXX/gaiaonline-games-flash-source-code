.class public Lcom/badlogic/gdx/math/collision/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x11d8ebabe8cf8b6fL


# instance fields
.field final cnt:Lcom/badlogic/gdx/math/Vector3;

.field final crn:[Lcom/badlogic/gdx/math/Vector3;

.field crn_dirty:Z

.field final dim:Lcom/badlogic/gdx/math/Vector3;

.field public final max:Lcom/badlogic/gdx/math/Vector3;

.field public final min:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v1, v3, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    .line 32
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 33
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 80
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 81
    const/4 v0, 0x0

    .local v0, "l_idx":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "minimum"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "maximum"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v1, v3, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    .line 32
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 33
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 101
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 102
    const/4 v0, 0x0

    .local v0, "l_idx":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 4
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v1, v3, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    .line 32
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 33
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 90
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 91
    const/4 v0, 0x0

    .local v0, "l_idx":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 94
    return-void
.end method

.method static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 268
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 264
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p1    # "b":F
    :goto_0
    return p1

    .restart local p1    # "b":F
    :cond_0
    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method public clr()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 245
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 4
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 230
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, p3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, p3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 6
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public ext(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 6
    .param p1, "a_bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getCorners()[Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->updateCorners()V

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getDimensions()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public declared-synchronized getMax()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMin()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public inf()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4

    .prologue
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 165
    return-object p0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 9
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->updateCorners()V

    .line 210
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    .local v0, "arr$":[Lcom/badlogic/gdx/math/Vector3;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 212
    .local v2, "l_pnt":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 213
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v5, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v6, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 214
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v5, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v6, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "l_pnt":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 217
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v4

    return-object v4
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 5
    .param p1, "minimum"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "maximum"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 122
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_1
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_2
    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 124
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_3
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_4
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_5
    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 129
    return-object p0

    .line 122
    :cond_0
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    :cond_2
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_2

    .line 124
    :cond_3
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_3

    :cond_4
    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_4

    :cond_5
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_5
.end method

.method public set(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 2
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 113
    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/util/List;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;)",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    .line 151
    .local v1, "l_point":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_0

    .line 152
    .end local v1    # "l_point":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 153
    return-object p0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 5
    .param p1, "points"    # [Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 138
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/math/Vector3;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 139
    .local v2, "l_point":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "l_point":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    .line 141
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCorners()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 54
    iput-boolean v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->crn_dirty:Z

    goto/16 :goto_0
.end method
