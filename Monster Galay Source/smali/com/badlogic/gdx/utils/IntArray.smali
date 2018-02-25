.class public Lcom/badlogic/gdx/utils/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 46
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 47
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 61
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 62
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 63
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .prologue
    .line 66
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;II)V

    .line 67
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 70
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, v1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 73
    return-void
.end method

.method public addAll([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 77
    return-void
.end method

.method public addAll([III)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 81
    .local v0, "items":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v2, p3

    sub-int v1, v2, p2

    .line 82
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 83
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 85
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 159
    return-void
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 109
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 110
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .local v2, "items":[I
    move v1, v0

    .line 111
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 112
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v3, v2, v1

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 113
    :goto_1
    return v3

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)[I
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 171
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int v0, v1, p1

    .line 172
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v1
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 118
    .local v1, "items":[I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 119
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 120
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 118
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 99
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 101
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 105
    aput p2, v0, p1

    .line 106
    return-void

    .line 103
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public removeIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 136
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 138
    .local v0, "items":[I
    aget v1, v0, p1

    .line 139
    .local v1, "value":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 140
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 141
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :goto_0
    return v1

    .line 143
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, v2

    aput v2, v0, p1

    goto :goto_0
.end method

.method public removeValue(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 125
    .local v1, "items":[I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 126
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 128
    const/4 v3, 0x1

    .line 131
    :goto_1
    return v3

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)[I
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    new-array v1, p1, [I

    .line 178
    .local v1, "newItems":[I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 179
    .local v0, "items":[I
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 181
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v5, -0x1

    .local v2, "lastIndex":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v3, v5, 0x2

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 190
    sub-int v1, v2, v0

    .line 191
    .local v1, "ii":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v4, v5, v0

    .line 192
    .local v4, "temp":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v6, v6, v1

    aput v6, v5, v0

    .line 193
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput v4, v5, v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "ii":I
    .end local v4    # "temp":I
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput p2, v0, p1

    .line 95
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 165
    return-void
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 198
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 199
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 200
    .local v1, "ii":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v3, v0

    .line 201
    .local v2, "temp":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v4, v4, v1

    aput v4, v3, v0

    .line 202
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput v2, v3, v1

    .line 198
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    .end local v1    # "ii":I
    .end local v2    # "temp":I
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 217
    :goto_0
    return-object v3

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 209
    .local v2, "items":[I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v3, :cond_1

    .line 213
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
