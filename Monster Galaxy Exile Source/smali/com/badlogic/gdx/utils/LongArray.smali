.class public Lcom/badlogic/gdx/utils/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public items:[J

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 46
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 47
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 4
    .param p1, "value"    # J

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 61
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 62
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 63
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;

    .prologue
    .line 66
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll(Lcom/badlogic/gdx/utils/LongArray;II)V

    .line 67
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 70
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

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

    iget v2, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 73
    return-void
.end method

.method public addAll([J)V
    .locals 2
    .param p1, "array"    # [J

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 77
    return-void
.end method

.method public addAll([JII)V
    .locals 5
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 81
    .local v0, "items":[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 83
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 85
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 159
    return-void
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 109
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 110
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .local v2, "items":[J
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
    aget-wide v3, v2, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

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

.method public ensureCapacity(I)[J
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 171
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int v0, v1, p1

    .line 172
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    return-object v1
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 118
    .local v1, "items":[J
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 119
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

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

.method public insert(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 99
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 101
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 105
    aput-wide p2, v0, p1

    .line 106
    return-void

    .line 103
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v2, v0, p1

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public peek()J
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public pop()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public removeIndex(I)J
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 136
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 138
    .local v0, "items":[J
    aget-wide v1, v0, p1

    .line 139
    .local v1, "value":J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 140
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v3, :cond_1

    .line 141
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :goto_0
    return-wide v1

    .line 143
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v3, v0, v3

    aput-wide v3, v0, p1

    goto :goto_0
.end method

.method public removeValue(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 125
    .local v1, "items":[J
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 126
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

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

.method protected resize(I)[J
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    new-array v1, p1, [J

    .line 178
    .local v1, "newItems":[J
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 179
    .local v0, "items":[J
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 181
    return-object v1
.end method

.method public reverse()V
    .locals 9

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v6, -0x1

    .local v2, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    div-int/lit8 v3, v6, 0x2

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 190
    sub-int v1, v2, v0

    .line 191
    .local v1, "ii":I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v4, v6, v0

    .line 192
    .local v4, "temp":J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v7, v7, v1

    aput-wide v7, v6, v0

    .line 193
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v4, v6, v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "ii":I
    .end local v4    # "temp":J
    :cond_0
    return-void
.end method

.method public set(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 93
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide p2, v0, p1

    .line 95
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 165
    return-void
.end method

.method public shuffle()V
    .locals 7

    .prologue
    .line 198
    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 199
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 200
    .local v1, "ii":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v2, v4, v0

    .line 201
    .local v2, "temp":J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v5, v5, v1

    aput-wide v5, v4, v0

    .line 202
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v2, v4, v1

    .line 198
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    .end local v1    # "ii":I
    .end local v2    # "temp":J
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 217
    :goto_0
    return-object v3

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 209
    .local v2, "items":[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge v1, v3, :cond_1

    .line 213
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
