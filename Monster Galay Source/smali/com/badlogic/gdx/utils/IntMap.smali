.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values:Lcom/badlogic/gdx/utils/IntMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 414
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 415
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 416
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .line 417
    :goto_1
    return v3

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 296
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 297
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 298
    :goto_1
    return-object v3

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 452
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 453
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 457
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(ILjava/lang/Object;IIIIII)V
    .locals 9
    .param p1, "insertKey"    # I
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IIIIII)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 192
    .local v3, "keyTable":[I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 193
    .local v6, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 198
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 201
    .local v5, "pushIterations":I
    :goto_0
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 215
    move/from16 v0, p8

    .line 216
    .local v0, "evictedKey":I
    aget-object v1, v6, p7

    .line 217
    .local v1, "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p7

    .line 218
    aput-object p2, v6, p7

    .line 223
    :goto_1
    and-int p3, v0, v4

    .line 224
    aget p4, v3, p3

    .line 225
    if-nez p4, :cond_1

    .line 226
    aput v0, v3, p3

    .line 227
    aput-object v1, v6, p3

    .line 228
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 257
    :cond_0
    :goto_2
    return-void

    .line 203
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_0
    move v0, p4

    .line 204
    .restart local v0    # "evictedKey":I
    aget-object v1, v6, p3

    .line 205
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p3

    .line 206
    aput-object p2, v6, p3

    goto :goto_1

    .line 209
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move v0, p6

    .line 210
    .restart local v0    # "evictedKey":I
    aget-object v1, v6, p5

    .line 211
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p5

    .line 212
    aput-object p2, v6, p5

    goto :goto_1

    .line 232
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result p5

    .line 233
    aget p6, v3, p5

    .line 234
    if-nez p6, :cond_2

    .line 235
    aput v0, v3, p5

    .line 236
    aput-object v1, v6, p5

    .line 237
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result p7

    .line 242
    aget p8, v3, p7

    .line 243
    if-nez p8, :cond_3

    .line 244
    aput v0, v3, p7

    .line 245
    aput-object v1, v6, p7

    .line 246
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_2

    .line 250
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->putStash(ILjava/lang/Object;)V

    goto :goto_2

    .line 252
    :cond_4
    move p1, v0

    .line 253
    move-object p2, v1

    .line 254
    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 9
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    .line 154
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 161
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v0, v3

    .line 162
    .local v4, "key1":I
    if-nez v4, :cond_2

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v3

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 170
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v6, v0, v5

    .line 171
    .local v6, "key2":I
    if-nez v6, :cond_3

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v5

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 174
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 179
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v8, v0, v7

    .line 180
    .local v8, "key3":I
    if-nez v8, :cond_4

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v7

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 187
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    goto :goto_0
.end method

.method private putStash(ILjava/lang/Object;)V
    .locals 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    if-ne v4, v5, :cond_0

    .line 262
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 268
    .local v2, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v3, v0, v4

    .local v3, "n":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 269
    aget v4, v2, v0

    if-ne v4, p1, :cond_1

    .line 270
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v1, v4, v5

    .line 276
    .local v1, "index":I
    aput p1, v2, v1

    .line 277
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 278
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 9
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v6, 0x0

    .line 428
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v5, v7

    .line 430
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 431
    int-to-float v5, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 432
    add-int/lit8 v5, p1, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 434
    const/4 v5, 0x3

    int-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 435
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/16 v7, 0x20

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    div-int/lit8 v7, v7, 0x4

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 437
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 438
    .local v3, "oldKeyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 440
    .local v4, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 441
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 443
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 444
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 446
    aget v1, v3, v0

    .line 447
    .local v1, "key":I
    if-eqz v1, :cond_0

    aget-object v5, v4, v0

    invoke-direct {p0, v1, v5}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_1
    move v5, v6

    .line 443
    goto :goto_0

    .line 449
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 367
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 368
    .local v2, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 369
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 370
    aput v6, v2, v0

    .line 371
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 373
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 374
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 375
    iput-object v7, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 376
    iput-boolean v6, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 377
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 401
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 410
    :goto_0
    return v1

    .line 402
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v1

    .line 403
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 404
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 406
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKeyStash(I)Z

    move-result v1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v4, 0x1

    .line 382
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 383
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_3

    .line 384
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v4

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 386
    .local v2, "keyTable":[I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 387
    aget v5, v2, v0

    if-eqz v5, :cond_2

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 388
    .end local v1    # "i":I
    .end local v2    # "keyTable":[I
    :cond_3
    if-eqz p2, :cond_4

    .line 389
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 390
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 391
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 393
    .end local v1    # "i":I
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    :cond_5
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 395
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 397
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 423
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int v0, v1, p1

    .line 424
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 425
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 291
    :goto_0
    return-object v1

    .line 283
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v1

    .line 284
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 285
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->getStash(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 1

    .prologue
    .line 511
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget-object v9, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 89
    .local v9, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 143
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v9

    .line 96
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 97
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v0, v3

    .line 98
    .local v4, "key1":I
    if-ne v4, p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v9, v0, v3

    .line 100
    .restart local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    goto :goto_0

    .line 104
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 105
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v6, v0, v5

    .line 106
    .local v6, "key2":I
    if-ne v6, p1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v9, v0, v5

    .line 108
    .restart local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_0

    .line 112
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 113
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v8, v0, v7

    .line 114
    .local v8, "key3":I
    if-ne v8, p1, :cond_4

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v9, v0, v7

    .line 116
    .restart local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    goto :goto_0

    .line 121
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    if-nez v4, :cond_5

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v3

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 128
    :cond_5
    if-nez v6, :cond_6

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v5

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 135
    :cond_6
    if-nez v8, :cond_7

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v7

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 142
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 148
    .local v0, "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<TV;>;"
    iget v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v3, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<TV;>;"
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 303
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 338
    :goto_0
    return-object v1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 305
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 306
    iput-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 307
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 311
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v3

    .line 312
    .local v0, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 313
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 314
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 315
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 316
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 320
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 321
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 322
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 323
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 324
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 325
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 329
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 330
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_4

    .line 331
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 333
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 334
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 338
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->removeStash(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method removeStash(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 343
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 344
    aget v4, v1, v0

    if-ne v4, p1, :cond_0

    .line 345
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 346
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->removeStashIndex(I)V

    .line 347
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 351
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v3, 0x0

    .line 356
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 357
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v1, v2

    .line 358
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 361
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v7, 0x3d

    .line 462
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "[]"

    .line 485
    :goto_0
    return-object v6

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 464
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 466
    .local v4, "keyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 467
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 468
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 469
    aget v3, v4, v1

    .line 470
    .local v3, "key":I
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 471
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 476
    .end local v1    # "i":I
    .end local v3    # "key":I
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 477
    aget v3, v4, v1

    .line 478
    .restart local v3    # "key":I
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 479
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 483
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 484
    .end local v2    # "i":I
    .end local v3    # "key":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    goto :goto_0
.end method
